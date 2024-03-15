import 'package:powersync/powersync.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import './models/schema.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logging/logging.dart';

final log = Logger('powersync-supabase');

final List<RegExp> fatalResponseCodes = [
  RegExp(r'^22...$'),
  RegExp(r'^23...$'),
  RegExp(r'^42501$'),
];

late final PowerSyncDatabase db;

Future<String> getDatabasePath() async {
  final dir = await getApplicationSupportDirectory();
  return join(dir.path, 'powersync-demo.db');
}

bool isLoggedIn() {
  return Supabase.instance.client.auth.currentSession?.accessToken != null;
}

Future<void> openDatabase() async {
  db = PowerSyncDatabase(schema: schema, path: await getDatabasePath());
  await db.initialize();

  await dotenv.load(fileName: '.env');

  await Supabase.initialize(
    url: dotenv.env['SUPABASE_URL']!,
    anonKey: dotenv.env['SUPABASE_ANON_KEY']!,
  );

  SupabaseConnector? currentConnector;

  if (isLoggedIn()) {
    currentConnector = SupabaseConnector(db);
    db.connect(connector: currentConnector);
  }

  Supabase.instance.client.auth.onAuthStateChange.listen((data) async {
    final AuthChangeEvent event = data.event;
    if (event == AuthChangeEvent.signedIn) {
      currentConnector = SupabaseConnector(db);
      db.connect(connector: currentConnector!);
    } else if (event == AuthChangeEvent.signedOut) {
      currentConnector = null;
      await db.disconnect();
    } else if (event == AuthChangeEvent.tokenRefreshed) {
      currentConnector?.prefetchCredentials();
    }
  });
}

class SupabaseConnector extends PowerSyncBackendConnector {
  PowerSyncDatabase db;
  SupabaseConnector(this.db);

  @override
  Future<void> uploadData(PowerSyncDatabase database) async {
    log.info('uploading data...');
    final transaction = await database.getNextCrudTransaction();
    if (transaction == null) {
      return;
    }

    final rest = Supabase.instance.client.rest;

    try {
      for (var op in transaction.crud) {
        final table = rest.from(op.table);
        if (op.op == UpdateType.put) {
          var data = Map<String, dynamic>.of(op.opData!);
          data['id'] = op.id;
          await table.upsert(data);
        } else if (op.op == UpdateType.patch) {
          await table.update(op.opData!).eq('id', op.id);
        } else if (op.op == UpdateType.delete) {
          await table.delete().eq('id', op.id);
        }
      }

      await transaction.complete();
    } on PostgrestException catch (e) {
      if (e.code != null &&
          fatalResponseCodes.any((re) => re.hasMatch(e.code!))) {
        await transaction.complete();
      } else {
        rethrow;
      }
    }
  }

  @override
  Future<PowerSyncCredentials?> fetchCredentials() async {
    final session = Supabase.instance.client.auth.currentSession;

    if (session == null) {
      return null;
    }

    final token = session.accessToken;

    return PowerSyncCredentials(
        endpoint: 'https://65130c9db6679a3682ba380a.powersync.journeyapps.com',
        token: token);
  }
}
