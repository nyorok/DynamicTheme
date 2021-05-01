import 'package:flutter/material.dart';
import 'package:dynamic_theme/src/styles/app_colors.dart';
import 'package:dynamic_theme/src/styles/app_themes.dart';

enum ThemeType { Light, Dark }

class ThemeProvider extends ChangeNotifier {
  ThemeType _type = ThemeType.Dark;

  toggleTheme() {
    if (_type != ThemeType.Light)
      _type = ThemeType.Light;
    else
      _type = ThemeType.Dark;

    return notifyListeners();
  }

  ThemeData getCurrentTheme() =>
      _type == ThemeType.Dark ? AppTheme().dark : AppTheme().light;

  ThemeColors getColors() => AppThemeColor(_type).getColors();
}
