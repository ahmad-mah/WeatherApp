import 'package:weather_app/core/network/api_client.dart';
import 'package:weather_app/core/typedefs.dart';
import 'package:weather_app/features/home/data/models/weather_model.dart';

abstract interface class HomeRemoteDataSource {
  Future<Result<WeatherModel>> fetchWeather(String query);
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  HomeRemoteDataSourceImpl({required this.client});

  final ApiClient client;

  @override
  Future<Result<WeatherModel>> fetchWeather(String query) async {
    final result = await client.get('current.json', queryParameters: {'q': query});
    return result.map(
      (json) => WeatherModel.fromJson(json as Map<String, dynamic>),
    );
  }
}
