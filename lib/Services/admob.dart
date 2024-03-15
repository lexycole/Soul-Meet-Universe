import 'dart:io';
import 'package:soul_meet_num/Configs/app_constants.dart';

String? getBannerAdUnitId() {
  if (Platform.isIOS) {
    return Admob_BannerAdUnitID_Ios;
  } else if (Platform.isAndroid) {
    return Admob_BannerAdUnitID_Android;
  }
  return null;
}
