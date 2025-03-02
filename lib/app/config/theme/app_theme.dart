import 'package:flutter/material.dart';

import 'colors.dart';

getTheme({required bool isDarkMode}) {
  if (isDarkMode) {
    return ThemeData.dark().copyWith(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: Color(0xffb9c3ff),
        surfaceTint: Color(0xffb9c3ff),
        onPrimary: Color.fromARGB(255, 201, 94, 32),
        primaryContainer: Color(0xff08546C),
        onPrimaryContainer: Color(0xffA0BACC),
        secondary: Color(0xffc3c5dd),
        onSecondary: Color.fromARGB(255, 66, 52, 44),
        onTertiary: Color(0xff44263e),
        error: Color(0xffffb4ab),
        onError: Color(0xff690005),
        surface: Color.fromARGB(255, 24, 23, 18),
        onSurface: Color(0xffe3e1e9),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.dark,
        elevation: 0,
      ),
      scaffoldBackgroundColor: AppColors.darkLight,
    );
  }
  return ThemeData.light().copyWith(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff505b92),
      surfaceTint: Color(0xff505b92),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffA0BACC),
      onPrimaryContainer: Color(0xff08164b),
      secondary: Color(0xff5a5d72),
      onSecondary: Color(0xffffffff),
      onSecondaryContainer: Color(0xff171b2c),
      tertiary: Color(0xff76546e),
      onTertiary: Color(0xffffffff),
      onTertiaryContainer: Color(0xff2c1228),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1b1b21),
    ),
    chipTheme: const ChipThemeData(
      backgroundColor: AppColors.dark,
      labelStyle: TextStyle(color: Colors.white),
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.dark,
      titleTextStyle: TextStyle(color: Colors.white),
      elevation: 0,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    scaffoldBackgroundColor: Colors.white,
  );
}
