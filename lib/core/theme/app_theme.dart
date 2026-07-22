import 'package:flutter/material.dart';
import 'package:weather_app/core/theme/dark_theme.dart';
import 'package:weather_app/core/theme/light_theme.dart';

abstract final class AppTheme {
  static ThemeData get light => LightTheme.theme;
  static ThemeData get dark => DarkTheme.theme;
}
