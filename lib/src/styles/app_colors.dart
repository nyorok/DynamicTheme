import 'dart:ui';

import 'package:dynamic_theme/src/providers/theme_provider.dart';

class AppThemeColor {
  ThemeType _themeType;
  AppThemeColor(this._themeType);

  ThemeColors getColors() {
    if (_themeType == ThemeType.Dark)
      return DarkColors();
    else
      return LightColors();
  }
}

class LightColors extends ThemeColors {
  LightColors()
      : super(
            primary: Color(0xFF155174),
            secondary: Color(0xFF696969),
            background: Color(0xffF2F2F2),
            mainBackground: Color(0xffF2F2F2));
}

class DarkColors extends ThemeColors {
  DarkColors()
      : super(
            primary: Color(0xFF0DA068),
            secondary: Color(0xFFFCFCFC),
            background: Color(0xFF252525),
            mainBackground: Color(0xFF2d2d2d));
}

abstract class ThemeColors {
  ThemeColors(
      {required this.primary,
      required this.secondary,
      required this.background,
      required this.mainBackground});

  Color primary;
  Color secondary;

  Color mainBackground;
  Color background;

  Color white = Color(0xffffffff);
  Color lightGray = Color(0xffa9a9a9);
}
