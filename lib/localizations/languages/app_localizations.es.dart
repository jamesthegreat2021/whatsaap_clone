import 'package:whatsapp_clone/localizations/languages/app_localizations.dart';

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get helloWorld => '¡Hola Mundo!';

  @override
  String get labelChats => 'Chats';

  @override
  String get labelStatus => 'estado';

  @override
  String get labelCalls => 'llamadas';

  @override
  String get labelCloudy => 'está nublado aquí';
}
