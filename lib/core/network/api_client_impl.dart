import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:weather_app/core/mappers/dio_failure_mapper.dart';
import 'package:weather_app/core/network/api_client.dart';
import 'package:weather_app/core/typedefs.dart';

final class ApiClientImpl implements ApiClient {
  const ApiClientImpl(this._dio);

  final Dio _dio;

  @override
  Future<Result<dynamic>> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get<dynamic>(
        path,
        queryParameters: queryParameters,
      );
      return Right(response.data);
    } on DioException catch (e) {
      return Left(DioFailureMapper.map(e));
    }
  }

  @override
  Future<Result<dynamic>> post(
    String path, {
    Map<String, dynamic>? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.post<dynamic>(
        path,
        data: data,
        queryParameters: queryParameters,
      );
      return Right(response.data);
    } on DioException catch (e) {
      return Left(DioFailureMapper.map(e));
    }
  }
}
