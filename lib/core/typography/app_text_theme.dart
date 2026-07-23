import 'package:flutter/material.dart';
import 'package:weather_app/core/colors/app_colors.dart';
import 'package:weather_app/core/responsive/app_responsive.dart';

abstract final class AppTextTheme {
  static TextTheme get textTheme => TextTheme(
    displayLarge: TextStyle(
      fontSize: AppResponsive.font(88),
      fontWeight: FontWeight.w200,
    ),
    headlineLarge: TextStyle(
      fontSize: AppResponsive.font(32),
      fontWeight: FontWeight.w500,
    ),
    headlineMedium: TextStyle(
      fontSize: AppResponsive.font(28),
      fontWeight: FontWeight.w500,
      color: AppColors.surface,
    ),
    titleLarge: TextStyle(
      fontSize: AppResponsive.font(18),
      fontWeight: FontWeight.w600,
    ),
    titleMedium: TextStyle(
      fontSize: AppResponsive.font(18),
      fontWeight: FontWeight.w200,
    ),
    bodyLarge: TextStyle(
      fontSize: AppResponsive.font(16),
      fontWeight: FontWeight.w400,
    ),
    bodySmall: TextStyle(
      fontSize: AppResponsive.font(12),
      fontWeight: FontWeight.w600,
    ),
  );
}
