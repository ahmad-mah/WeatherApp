import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:weather_app/core/constants/app_dimensions.dart';
import 'package:weather_app/core/extensions/context_extensions.dart';
import 'package:weather_app/core/responsive/app_responsive.dart';
import 'package:weather_app/features/home/presentation/providers/weather_provider.dart';
import 'package:weather_app/features/home/presentation/widgets/current_weather_card.dart';
import 'package:weather_app/features/home/presentation/widgets/forecast_card.dart';
import 'package:weather_app/features/home/presentation/widgets/search_field.dart';
import 'package:weather_app/features/home/presentation/widgets/stats_grid.dart';

class HomeViewBody extends HookConsumerWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weatherState = ref.watch(weatherProvider);

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: AppDimensions.lg,
        vertical: AppDimensions.md,
      ),
      child: weatherState.when(
        data: (weather) {
          if (weather == null) {
            return Column(
              children: [
                const SearchField(),
                SizedBox(height: AppResponsive.height(56)),
                Center(
                  child: Text(
                    'Search for a city to get weather',
                    style: TextStyle(
                      fontSize: AppResponsive.font(16),
                      color: context.colors.onSurface.withValues(alpha: 0.5),
                    ),
                  ),
                ),
              ],
            );
          }

          return Column(
            children: [
              const SearchField(),
              SizedBox(height: AppResponsive.height(56)),
              CurrentWeatherCard(weather: weather),
              SizedBox(height: AppResponsive.height(AppDimensions.lg)),
              const ForecastCard(),
              SizedBox(height: AppResponsive.height(AppDimensions.lg)),
              StatsGrid(current: weather.current),
            ],
          );
        },
        loading: () => Column(
          children: [
            const SearchField(),
            SizedBox(height: AppResponsive.height(56)),
            const Center(child: CircularProgressIndicator()),
          ],
        ),
        error: (error, _) => Column(
          children: [
            const SearchField(),
            SizedBox(height: AppResponsive.height(56)),
            Center(
              child: Text(
                error.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: AppResponsive.font(16),
                  color: context.colors.error,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
