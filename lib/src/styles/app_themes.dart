import 'package:flutter/material.dart';
import 'package:dynamic_theme/src/styles/app_colors.dart';

class AppTheme {
  ThemeData light = _theme(LightColors());
  ThemeData dark = _theme(DarkColors());
}

ThemeData _theme(ThemeColors color) => ThemeData.light().copyWith(
    primaryColor: color.primary,
    scaffoldBackgroundColor: color.mainBackground,
    backgroundColor: color.mainBackground,
    accentColor: color.secondary,
    textTheme: TextTheme(
        headline6: TextStyle(
            color: color.primary,
            fontSize: 70,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold),
        headline5: TextStyle(
            fontSize: 50,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold)),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(color.primary))),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: color.background));
