import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utils/locale_helpers.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('en', '');

  Locale get locale => _locale;

  void changeLanguage(String languageCode) async {
    var locale = await setLocale(languageCode);
    _locale = locale;
    notifyListeners();
  }

  void fetchLocale() async {
    var locale = await getLocale();
    _locale = locale;
    notifyListeners();
  }
}
