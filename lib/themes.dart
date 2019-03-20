import 'package:flutter/material.dart';

class AppThemes {
  static final List<ThemeData> _themeList = [ninga, ninjaDark];

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
    return ['ninga', 'ningaDark'];
  }

  static ThemeData getThemeData([int index = 0]) {
    return _themeList[index];
  }
}
