import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/core/constants/app_assets.dart';
import 'package:weather_app/core/constants/app_dimensions.dart';
import 'package:weather_app/core/extensions/context_extensions.dart';
import 'package:weather_app/core/responsive/app_responsive.dart';

class ForecastCard extends StatelessWidget {
  const ForecastCard({super.key});

  @override
  Widget build(BuildContext context) {
    final surfaceColor = Theme.of(context).colorScheme.surface;

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
      padding: const EdgeInsets.all(AppDimensions.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hourly Forecast',
            style: TextStyle(
              fontSize: AppResponsive.font(16),
              fontWeight: FontWeight.w600,
              color: context.colors.onSurface,
            ),
          ),
          SizedBox(height: AppResponsive.height(12)),
          SizedBox(
            height: AppResponsive.height(80),
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              separatorBuilder: (_, _) => const SizedBox(width: AppDimensions.lg),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text(
                      '${index + 9}:00',
                      style: TextStyle(
                        fontSize: AppResponsive.font(12),
                        color: context.colors.onSurface.withValues(alpha: 0.6),
                      ),
                    ),
                    const Spacer(),
                    SvgPicture.asset(
                      AppAssets.sunnyAlt,
                      width: AppResponsive.width(24),
                      height: AppResponsive.width(24),

                    ),
                    const Spacer(),
                    Text(
                      '${26 - index}\u00B0',
                      style: TextStyle(
                        fontSize: AppResponsive.font(14),
                        fontWeight: FontWeight.w600,
                        color: context.colors.onSurface,
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
