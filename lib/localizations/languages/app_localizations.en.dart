import 'package:whatsapp_clone/localizations/languages/app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get helloWorld => 'Hello World!';

  @override
  String get labelChats => 'Chats';

  @override
  String get labelStatus => 'Status';

  @override
  String get labelCalls => 'Calls';

  @override
  String get labelCloudy => 'It\'s cloudy here';
}
