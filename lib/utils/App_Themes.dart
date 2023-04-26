import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData LightTheme = ThemeData(
    appBarTheme: AppBarTheme(foregroundColor: Colors.black),
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      secondary: Colors.black,
    ),
  );

  static ThemeData DarkTheme = ThemeData(
      colorScheme: ColorScheme.dark(
    primary: Colors.black,
    secondary: Colors.white,
  ));
}
