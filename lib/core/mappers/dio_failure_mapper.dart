import 'package:dio/dio.dart';
import 'package:weather_app/core/failures/app_failure.dart';

abstract final class DioFailureMapper {
  static AppFailure map(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionError:
        return const NoInternet();
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.receiveTimeout:
      case DioExceptionType.sendTimeout:
        return const TimeoutFailure();
      case DioExceptionType.badCertificate:
      case DioExceptionType.badResponse:
      case DioExceptionType.cancel:
      case DioExceptionType.transformTimeout:
      case DioExceptionType.unknown:
        return const UnknownFailure();
    }
  }
}
