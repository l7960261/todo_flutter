import 'package:flutter/material.dart';

class AppThemes {
  static const defaultTheme = 'ninga';
  static final Map<String, ThemeData> _themeList = {
    'ninga': ninga,
    'ningaDark': ninjaDark
  };

  static final ninga = ThemeData(
      primaryColor: const Color(0xFF117cc1),
      primaryColorLight: const Color(0xFF5dabf4),
      primaryColorDark: const Color(0xFF0D5D91),
      indicatorColor: Colors.white,
      bottomAppBarColor: Colors.grey.shade300,
      backgroundColor: Colors.grey.shade200,
      buttonColor: const Color(0xFF0D5D91));

  static final ninjaDark = ThemeData(
      brightness: Brightness.dark, accentColor: Colors.lightBlueAccent);

  static List<String> getThemesList() {
    return _themeList.keys.toList();
  }

  static ThemeData getThemeData([String key = defaultTheme]) {
    return _themeList[key];
  }
}
