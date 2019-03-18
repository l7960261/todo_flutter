import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_flutter/I10n/messages_all.dart';

class AppLocalization {
  static Future<AppLocalization> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalization();
    });
  }

  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization);
  }

  String get splashTitle {
    return Intl.message('TODO Application',
        name: 'splashTitle', desc: 'The title of application');
  }

  String get loginTitle {
    return Intl.message('Login',
        name: 'loginTitle', desc: 'The title of Login');
  }

  String get  homeTitle {
    return Intl.message('Home',
        name: 'homeTitle', desc: 'The title of Home');
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalization> {
  final Locale newLocale;
  const AppLocalizationsDelegate({this.newLocale});

  @override
  bool isSupported(Locale locale) =>
      ['en', 'es', 'ja'].contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) {
    return AppLocalization.load(newLocale ?? locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) {
    return true;
  }
}
