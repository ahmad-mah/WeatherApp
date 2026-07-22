import 'package:fpdart/fpdart.dart';
import 'package:weather_app/core/failures/app_failure.dart';

typedef Result<T> = Either<AppFailure, T>;
