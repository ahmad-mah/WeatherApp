import 'dart:convert';

import 'package:fpdart/fpdart.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/core/failures/app_failure.dart';
import 'package:weather_app/core/typedefs.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

abstract interface class HomeLocalDataSource {
  Future<Result<WeatherModel>> getCachedWeather();
  Future<void> cacheRawWeather(Map<String, dynamic> json);
  Future<void> clearCache();
}

class HomeLocalDataSourceImpl implements HomeLocalDataSource {
  HomeLocalDataSourceImpl({required this.box});

  final Box<String> box;

  static const _key = 'current_weather';

  @override
  Future<Result<WeatherModel>> getCachedWeather() async {
    final raw = box.get(_key);
    if (raw == null) return const Left(CacheFailure());
    final json = jsonDecode(raw) as Map<String, dynamic>;
    return Right(WeatherModel.fromJson(json));
  }

  @override
  Future<void> cacheRawWeather(Map<String, dynamic> json) async {
    await box.put(_key, jsonEncode(json));
  }

  @override
  Future<void> clearCache() async {
    await box.delete(_key);
  }
}
