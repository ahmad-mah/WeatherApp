import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/core/mappers/location_failure_mapper.dart';
import 'package:weather_app/core/typedefs.dart';

abstract final class LocationService {
  static Future<Result<Position>> getCurrentPosition({
    LocationAccuracy accuracy = LocationAccuracy.medium,
  }) async {
    try {
      final enabled = await Geolocator.isLocationServiceEnabled();
      if (!enabled) {
        return left(LocationFailureMapper.mapServiceDisabled());
      }

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          return left(LocationFailureMapper.mapPermissionDenied());
        }
      }

      if (permission == LocationPermission.deniedForever) {
        return left(LocationFailureMapper.mapPermissionDeniedForever());
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(
          accuracy: accuracy,
          timeLimit: const Duration(seconds: 10),
        ),
      );

      return right(position);
    } catch (e) {
      return left(LocationFailureMapper.map(e));
    }
  }

  static Future<Result<Position?>> getLastKnownPosition() async {
    try {
      final position = await Geolocator.getLastKnownPosition();
      return right(position);
    } catch (e) {
      return left(LocationFailureMapper.map(e));
    }
  }
}
