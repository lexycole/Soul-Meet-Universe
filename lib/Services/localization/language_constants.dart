import 'package:soul_meet_num/Services/localization/demo_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:soul_meet_num/Configs/optional_constants.dart';

const String LAGUAGE_CODE = 'languageCode';

const String ENGLISH = 'en';

List languagelist = [
  ENGLISH,
];
List<Locale> supportedlocale = [
  Locale(ENGLISH, "US"),
];

Future<Locale> setLocale(String languageCode) async {
  print(languageCode);
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(LAGUAGE_CODE, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  print(LAGUAGE_CODE);
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode =
      _prefs.getString(LAGUAGE_CODE) ?? DEFAULT_LANGUAGE_FILE_CODE;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case ENGLISH:
      return Locale(ENGLISH, 'US');

    default:
      return Locale(ENGLISH, 'US');
  }
} 

String getTranslated(BuildContext context, String key) {
  return DemoLocalization.of(context)!.translate(key) ?? '';
}
