import 'package:weather_app/core/typedefs.dart';

abstract interface class ApiClient {
  Future<Result<dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  });

  Future<Result<dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  });
}
