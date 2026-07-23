sealed class AppFailure {
  const AppFailure();
}

// Location
sealed class LocationFailure extends AppFailure {
  const LocationFailure();
}

final class PermissionDenied extends LocationFailure {
  const PermissionDenied();
}

final class PermissionDeniedForever extends LocationFailure {
  const PermissionDeniedForever();
}

final class ServiceDisabled extends LocationFailure {
  const ServiceDisabled();
}

// Network & API
final class NoInternet extends AppFailure {
  const NoInternet();
}

final class TimeoutFailure extends AppFailure {
  const TimeoutFailure();
}

final class CityNotFound extends AppFailure {
  const CityNotFound();
}

final class CacheFailure extends AppFailure {
  const CacheFailure();
}

final class UnknownFailure extends AppFailure {
  const UnknownFailure();
}
