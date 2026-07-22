import 'package:flutter/material.dart';
import 'package:weather_app/core/responsive/app_responsive.dart';

abstract final class AppTextTheme {
  static TextTheme get textTheme => TextTheme(
    displayLarge: TextStyle(
      fontFamily: 'Manrope',
      fontSize: AppResponsive.font(88),
      fontWeight: FontWeight.w200,
      height: 96 / 88,
      letterSpacing: AppResponsive.font(-4),
    ),
    headlineLarge: TextStyle(
      fontFamily: 'Manrope',
      fontSize: AppResponsive.font(32),
      fontWeight: FontWeight.w500,
      height: 40 / 32,
      letterSpacing: AppResponsive.font(-1),
    ),
    headlineMedium: TextStyle(
      fontFamily: 'Manrope',
      fontSize: AppResponsive.font(28),
      fontWeight: FontWeight.w500,
      height: 36 / 28,
      letterSpacing: 0,
    ),
    titleLarge: TextStyle(
      fontFamily: 'Manrope',
      fontSize: AppResponsive.font(18),
      fontWeight: FontWeight.w600,
      height: 24 / 18,
      letterSpacing: 0,
    ),
    titleMedium: TextStyle(
      fontFamily: 'Manrope',
      fontSize: AppResponsive.font(18),
      fontWeight: FontWeight.w200,
      height: 24 / 18,
      letterSpacing: 0,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'Manrope',
      fontSize: AppResponsive.font(16),
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
    ),
    bodySmall: TextStyle(
      fontFamily: 'Manrope',
      fontSize: AppResponsive.font(12),
      fontWeight: FontWeight.w600,
      height: 16 / 12,
      letterSpacing: AppResponsive.font(1),
    ),
  );
}
