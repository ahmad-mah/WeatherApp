import 'package:weather_app/features/home/data/models/current_weather_model.dart';
import 'package:weather_app/features/home/data/models/location_model.dart';

class WeatherModel {
  WeatherModel({required this.location, required this.current});

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    location: LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    current: CurrentWeatherModel.fromJson(
      json['current'] as Map<String, dynamic>,
    ),
  );

  final LocationModel location;
  final CurrentWeatherModel current;

  Map<String, dynamic> toJson() => {
    'location': location.toJson(),
    'current': current.toJson(),
  };
}
