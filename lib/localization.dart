import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_flutter/I10n/messages_all.dart';
import 'package:todo_flutter/data/models/models.dart';
import 'package:todo_flutter/utils/constants.dart';

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

  String get splashTitle => Intl.message('TODO Application',
      name: 'splashTitle', desc: 'The title of application');
  String get homeTitle =>
      Intl.message('Home', name: 'homeTitle', desc: 'The title of Home');
  String get peferences =>
      Intl.message('Preferences', name: 'peferences', desc: 'Peferences');
  String get language =>
      Intl.message('Language', name: 'language', desc: 'Language');
  String get theme => Intl.message('Theme', name: 'theme', desc: 'Theme');
  String get manage => Intl.message('Manage', name: 'manage', desc: 'Manage');
  String get login => Intl.message('Login', name: 'login', desc: 'Login');
  String get logout => Intl.message('Logout', name: 'logout', desc: 'Logout');
  String get userNamePlaceholder => Intl.message('Please enter username',
      name: 'userNamePlaceholder', desc: 'Please enter username');
  String get passwordPlaceholder => Intl.message('Please enter password',
      name: 'passwordPlaceholder', desc: 'Please enter password');
  String get passwordBelow6Digits =>
      Intl.message('Password length is not enough 6 digits',
          name: 'passwordBelow6Digits',
          desc: 'Password length is not enough 6 digits');
  String get chooseALanguage => Intl.message('Choose a language',
      name: 'chooseALanguage', desc: 'Choose a language');
  String get chooseATheme => Intl.message('Choose a theme',
      name: 'chooseATheme', desc: 'Choose a theme');
  String get themeDefault =>
      Intl.message('Default', name: 'themeDefault', desc: 'Default theme');
  String get themeDarkGreen =>
      Intl.message('Dark green', name: 'themeDarkGreen', desc: 'Dark green');
  String get newWallet =>
      Intl.message('New Wallet', name: 'newWallet', desc: 'New Wallet');
  String get importWallet => Intl.message('Import Wallet',
      name: 'importWallet', desc: 'Import Wallet');

  static Iterable<LanguageEntity> languageMap() {
    return kLanguages.map((String locale) {
      switch (locale) {
        case 'en':
          return LanguageEntity((b) => b
            ..languageCode = locale
            ..countryCode = 'US'
            ..displayName = 'English (en)');
        case 'zh-Hans':
          return LanguageEntity((b) => b
            ..languageCode = locale
            ..countryCode = ''
            ..displayName = '简体字 (zh-Hans)');
        case 'th':
          return LanguageEntity((b) => b
            ..languageCode = locale
            ..countryCode = 'TH'
            ..displayName = 'ไทย (th)');
        case 'vi':
          return LanguageEntity((b) => b
            ..languageCode = locale
            ..countryCode = ''
            ..displayName = 'Tiếng Việt (vi)');
      }
    });
  }
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalization> {
  final Locale newLocale;
  const AppLocalizationsDelegate({this.newLocale});

  @override
  bool isSupported(Locale locale) => kLanguages.contains(locale.languageCode);

  @override
  Future<AppLocalization> load(Locale locale) {
    return AppLocalization.load(newLocale ?? locale);
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) {
    return true;
  }
}
