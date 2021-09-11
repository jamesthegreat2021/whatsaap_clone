import 'package:flutter/material.dart';

abstract class AppLocalizations {
  AppLocalizations(String locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  String get helloWorld;

  String get labelChats;

  String get labelStatus;

  String get labelCalls;

  String get labelCloudy;
}
