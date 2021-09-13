import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

const prefSelectedLanguageCode = 'SelectedLanguageCode';

Future<Locale> setLocale(String languageCode) async {
  var _prefs = await SharedPreferences.getInstance();
  _prefs.setString(prefSelectedLanguageCode, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  var _prefs = await SharedPreferences.getInstance();
  var languageCode = _prefs.getString(prefSelectedLanguageCode) ?? 'en';
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  return languageCode.isNotEmpty ? Locale(languageCode, '') : Locale('en', '');
}
