import 'dart:async';

import 'package:weather_app/core/failures/app_failure.dart';

abstract final class LocationFailureMapper {
  static AppFailure map(dynamic error) {
    if (error is TimeoutException) {
      return const TimeoutFailure();
    }
    return const UnknownFailure();
  }

  static AppFailure mapServiceDisabled() => const ServiceDisabled();

  static AppFailure mapPermissionDenied() => const PermissionDenied();

  static AppFailure mapPermissionDeniedForever() =>
    const PermissionDeniedForever();
}
