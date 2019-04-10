import 'package:flutter/material.dart';
import 'package:todo_flutter/localization.dart';

class AppThemes {
  static const defaultTheme = 'ninja';
  static final Map<String, ThemeData> _themeList = {
    defaultTheme: ninja,
    'ninjaDark': ninjaDark
  };

  static final ninja = ThemeData(
      primaryColor: const Color(0xFF117cc1),
      primaryColorLight: const Color(0xFF5dabf4),
      primaryColorDark: const Color(0xFF0D5D91),
      indicatorColor: Colors.white,
      bottomAppBarColor: Colors.grey.shade300,
      backgroundColor: Colors.grey.shade200,
      buttonColor: const Color(0xFF0D5D91));

  static final ninjaDark =
      ThemeData(brightness: Brightness.dark, accentColor: Colors.teal);

  static List<ThemeSetting> getList(BuildContext context) {
    return _themeList.keys.map((key) {
      switch (key) {
        case defaultTheme:
          return ThemeSetting(key, AppLocalization.of(context).themeDefault);
        case 'ninjaDark':
          return ThemeSetting(key, AppLocalization.of(context).themeDarkGreen);
      }
    }).toList();
  }

  static ThemeData getStyle([String key = defaultTheme]) {
    return _themeList[key];
  }
}

class ThemeSetting {
  final String key;
  final String text;

  ThemeSetting(this.key, this.text);
}
