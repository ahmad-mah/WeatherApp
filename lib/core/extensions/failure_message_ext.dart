import 'package:flutter/widgets.dart';
import 'package:weather_app/core/failures/app_failure.dart';
import 'package:weather_app/i18n/translations.g.dart';

extension FailureMessage on AppFailure {
  String message(BuildContext context) {
    final t = Translations.of(context);

    return switch (this) {
      ServiceDisabled() => t.failure.serviceDisabled,
      PermissionDenied() => t.failure.permissionDenied,
      PermissionDeniedForever() => t.failure.permissionDeniedForever,
      NoInternet() => t.failure.noInternet,
      TimeoutFailure() => t.failure.timeout,
      CacheFailure() => t.failure.cache,
      CityNotFound() => t.failure.cityNotFound,
      UnknownFailure() => t.failure.unknown,
    };
  }
}
