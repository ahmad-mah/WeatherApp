import 'package:flutter/material.dart';
import 'package:weather_app/core/colors/app_colors.dart';

abstract final class LightColors {
  static ColorScheme get scheme => const ColorScheme.light(
    primary: AppColors.accent,
    onPrimary: AppColors.textPrimary,
    primaryContainer: AppColors.surface,
    onPrimaryContainer: AppColors.textPrimaryAlt,
    secondary: AppColors.accentAlt,
    onSecondary: AppColors.textPrimary3,
    secondaryContainer: AppColors.accent3,
    onSecondaryContainer: AppColors.accent7,
    tertiary: AppColors.accent4,
    onTertiary: AppColors.textPrimary4,
    tertiaryContainer: AppColors.accent5,
    onTertiaryContainer: AppColors.textPrimary,
    onSurface: AppColors.textPrimary,
    surfaceContainerHighest: AppColors.surface,
    onSurfaceVariant: AppColors.textTertiary,
    outline: AppColors.textTertiary,
    outlineVariant: AppColors.textSecondary,
    error: AppColors.accent8,
    errorContainer: AppColors.accent6,
    onErrorContainer: AppColors.accent8,
  );
}
