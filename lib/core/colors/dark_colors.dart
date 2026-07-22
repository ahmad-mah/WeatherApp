import 'package:flutter/material.dart';
import 'package:weather_app/core/colors/app_colors.dart';

abstract final class DarkColors {
  static ColorScheme get scheme => const ColorScheme.dark(
    primary: AppColors.accent,
    onPrimary: AppColors.textPrimary,
    primaryContainer: AppColors.surface,
    onPrimaryContainer: AppColors.textPrimaryAlt,
    secondary: AppColors.accentAlt,
    onSecondary: AppColors.textPrimary3,
    secondaryContainer: AppColors.accent7,
    onSecondaryContainer: AppColors.accent3,
    tertiary: AppColors.accent4,
    onTertiary: AppColors.textPrimary4,
    tertiaryContainer: AppColors.accent5,
    onTertiaryContainer: AppColors.darkOnSurface,
    surface: AppColors.darkSurface,
    onSurface: AppColors.darkOnSurface,
    surfaceContainerHighest: AppColors.darkSurfaceCard,
    onSurfaceVariant: AppColors.textTertiary,
    outline: AppColors.textSecondary,
    outlineVariant: AppColors.textTertiary,
    error: AppColors.accent6,
    onError: AppColors.accent8,
    errorContainer: AppColors.accent8,
    onErrorContainer: AppColors.accent6,
  );
}
