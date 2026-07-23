import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app/core/services/location_service.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';
import 'package:weather_app/features/home/data/providers/home_providers.dart';

class WeatherNotifier extends AsyncNotifier<WeatherModel?> {
  @override
  FutureOr<WeatherModel?> build() => null;

  Future<void> fetchWeather(String query) async {
    state = const AsyncValue.loading();
    final repo = await ref.read(homeRepositoryProvider.future);
    final result = await repo.getWeather(query);
    state = result.fold(
      (failure) => AsyncValue.error(failure, StackTrace.current),
      AsyncValue.data,
    );
  }

  Future<void> fetchWeatherByLocation() async {
    state = const AsyncValue.loading();
    final positionResult = await LocationService.getCurrentPosition();
    await positionResult.fold(
      (failure) async {
        state = AsyncValue.error(failure, StackTrace.current);
      },
      (position) async {
        final query = '${position.latitude},${position.longitude}';
        final repo = await ref.read(homeRepositoryProvider.future);
        final result = await repo.getWeather(query);
        state = result.fold(
          (failure) => AsyncValue.error(failure, StackTrace.current),
          AsyncValue.data,
        );
      },
    );
  }
}

final weatherProvider =
    AsyncNotifierProvider<WeatherNotifier, WeatherModel?>(WeatherNotifier.new);
