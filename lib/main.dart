import 'package:flutter/material.dart';
import 'package:soul_meet_num/Services/localization/demo_localization.dart';
import 'package:soul_meet_num/Services/localization/language_constants.dart';
import './powersync.dart';
import 'package:logging/logging.dart';
import 'package:get/get.dart';
import 'package:soul_meet_num/Routes/routes_helpers.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

final log = Logger('powersync-supabase');

Future<void> main() async {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    print(
        '[${record.loggerName}] ${record.level.name}: ${record.time}: ${record.message}');

    if (record.error != null) {
      print(record.error);
    }
    if (record.stackTrace != null) {
      print(record.stackTrace);
    }
  });

  WidgetsFlutterBinding.ensureInitialized();
  await openDatabase();
  final testResults = await db.getAll('SELECT * from messages');
  log.info('testResults = $testResults');
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState state = context.findAncestorStateOfType<_MyAppState>()!;
    state.setLocale(newLocale);
  }
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale _locale = Locale(ENGLISH, 'US'); 
  void setLocale(Locale newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteHelper.getInitial(),
      getPages: RouteHelper.routes,
      locale: _locale,
      localizationsDelegates: [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: supportedlocale
    );
  }
}

