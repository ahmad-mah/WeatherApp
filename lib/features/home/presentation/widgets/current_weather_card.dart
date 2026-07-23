import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/constants/app_assets.dart';
import 'package:weather_app/core/constants/app_dimensions.dart';
import 'package:weather_app/core/extensions/context_extensions.dart';
import 'package:weather_app/core/responsive/app_responsive.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

class CurrentWeatherCard extends StatelessWidget {
  const CurrentWeatherCard({required this.weather, super.key});

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    final surfaceColor = Theme.of(context).colorScheme.surface;
    final temp = weather.current.tempC.round();

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
      padding: const EdgeInsets.symmetric(
        vertical: AppDimensions.xl,
        horizontal: AppDimensions.lg,
      ),
      child: Column(
        children: [
          SvgPicture.asset(
            AppAssets.sunnyAlt,
            width: AppResponsive.width(100),
            height: AppResponsive.width(100),
          ),
          SizedBox(height: AppResponsive.height(8)),
          Text(
            '$temp\u00B0',
            style: TextStyle(
              fontSize: AppResponsive.font(72),
              fontWeight: FontWeight.w200,
              color: context.colors.onSurface,
              height: 1.1,
            ),
          ),
          SizedBox(height: AppResponsive.height(8)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssets.location,
                width: AppResponsive.width(16),
                height: AppResponsive.width(16),
              ),
              const SizedBox(width: AppDimensions.sm),
              Text(
                '${weather.location.name}, ${weather.location.country}',
                style: TextStyle(
                  fontSize: AppResponsive.font(16),
                  fontWeight: FontWeight.w600,
                  color: context.colors.onSurface,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
