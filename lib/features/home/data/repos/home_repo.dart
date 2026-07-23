import 'package:fpdart/fpdart.dart';
import 'package:weather_app/core/typedefs.dart';
import 'package:weather_app/features/home/data/datasources/home_local_datasource.dart';
import 'package:weather_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

abstract interface class HomeRepository {
  Future<Result<WeatherModel>> getWeather(String query);
}

class HomeRepositoryImpl implements HomeRepository {
  HomeRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final HomeRemoteDataSource remoteDataSource;
  final HomeLocalDataSource localDataSource;

  @override
  Future<Result<WeatherModel>> getWeather(String query) async {
    final remoteResult = await remoteDataSource.fetchWeather(query);

    return remoteResult.fold(
      (failure) async {
        final cached = await localDataSource.getCachedWeather();
        return cached.fold(
          (_) => Left(failure),
          Right.new,
        );
      },
      (data) async {
        await localDataSource.cacheRawWeather(data.toJson());
        return Right(data);
      },
    );
  }
}
