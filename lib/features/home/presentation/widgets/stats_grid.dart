import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/constants/app_assets.dart';
import 'package:weather_app/core/constants/app_dimensions.dart';
import 'package:weather_app/core/extensions/context_extensions.dart';
import 'package:weather_app/core/responsive/app_responsive.dart';
import 'package:weather_app/features/home/data/models/current_weather_model.dart';

class StatsGrid extends StatelessWidget {
  const StatsGrid({required this.current, super.key});

  final CurrentWeatherModel current;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppDimensions.md,
      runSpacing: AppDimensions.md,
      children: [
        _StatCard(
          icon: AppAssets.air,
          label: 'Wind',
          value: '${current.windKph.round()} km/h',
          status: _windDescription(current.windKph),
        ),
        _StatCard(
          icon: AppAssets.humidity,
          label: 'Humidity',
          value: '${current.humidity}%',
          status: _humidityDescription(current.humidity),
        ),
        _StatCard(
          icon: AppAssets.visibility,
          label: 'Visibility',
          value: '${current.visKm.round()} km',
          status: _visibilityDescription(current.visKm),
        ),
        _StatCard(
          icon: AppAssets.sunnyAlt,
          label: 'UV Index',
          value: '${current.uv.round()}',
          status: _uvDescription(current.uv),
        ),
      ],
    );
  }

  String _windDescription(double kph) {
    if (kph < 5) return 'Calm';
    if (kph < 20) return 'Gentle breeze';
    if (kph < 40) return 'Moderate';
    return 'Strong';
  }

  String _humidityDescription(int humidity) {
    if (humidity < 30) return 'Low';
    if (humidity < 60) return 'Moderate';
    return 'High';
  }

  String _visibilityDescription(double km) {
    if (km < 2) return 'Foggy';
    if (km < 5) return 'Poor';
    if (km < 10) return 'Moderate';
    return 'Clear';
  }

  String _uvDescription(double uv) {
    if (uv < 3) return 'Low';
    if (uv < 6) return 'Moderate';
    if (uv < 8) return 'High';
    return 'Very high';
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.icon,
    required this.label,
    required this.value,
    required this.status,
  });

  final String icon;
  final String label;
  final String value;
  final String status;

  @override
  Widget build(BuildContext context) {
    final surfaceColor = Theme.of(context).colorScheme.surface;
    final width = (MediaQuery.sizeOf(context).width - AppDimensions.md * 2 - AppDimensions.md) / 2;

    return Container(
      decoration: BoxDecoration(
        color: surfaceColor.withValues(alpha: 0.7),
        borderRadius: BorderRadius.circular(AppDimensions.radiusLg),
        border: Border.all(color: Colors.white.withValues(alpha: 0.4)),
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withValues(alpha: 0.15),
          ),
        ],
      ),
      padding: const EdgeInsets.all(AppDimensions.md),
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  icon,
                  width: AppResponsive.width(18),
                  height: AppResponsive.width(18),
                ),
                const SizedBox(width: AppDimensions.sm),
                Text(
                  label,
                  style: TextStyle(
                    fontSize: AppResponsive.font(12),
                    color: context.colors.onSurface.withValues(alpha: 0.6),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppResponsive.height(12)),
            Text(
              value,
              style: TextStyle(
                fontSize: AppResponsive.font(22),
                fontWeight: FontWeight.w600,
                color: context.colors.onSurface,
              ),
            ),
            SizedBox(height: AppResponsive.height(4)),
            Text(
              status,
              style: TextStyle(
                fontSize: AppResponsive.font(12),
                color: context.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
