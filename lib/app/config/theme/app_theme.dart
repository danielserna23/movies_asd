import 'package:flutter/material.dart';

class AppTheme {
  final bool isDarkMode;
  AppTheme({required this.isDarkMode});
  ThemeData getTheme() => ThemeData(
        useMaterial3: true,
        brightness: isDarkMode ? Brightness.dark : Brightness.light,
      );
}
