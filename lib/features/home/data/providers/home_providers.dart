import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:weather_app/core/providers/providers.dart';
import 'package:weather_app/features/home/data/datasources/home_local_datasource.dart';
import 'package:weather_app/features/home/data/datasources/home_remote_datasource.dart';
import 'package:weather_app/features/home/data/repos/home_repo.dart';

final hiveBoxProvider = FutureProvider<Box<String>>((ref) async {
  return Hive.openBox<String>('weather_cache');
});

final homeRemoteDataSourceProvider = Provider<HomeRemoteDataSource>((ref) {
  return HomeRemoteDataSourceImpl(client: ref.read(apiClientProvider));
});

final homeLocalDataSourceProvider =
    FutureProvider<HomeLocalDataSource>((ref) async {
  final box = await ref.watch(hiveBoxProvider.future);
  return HomeLocalDataSourceImpl(box: box);
});

final homeRepositoryProvider =
    FutureProvider<HomeRepository>((ref) async {
  final local = await ref.watch(homeLocalDataSourceProvider.future);
  final remote = ref.read(homeRemoteDataSourceProvider);
  return HomeRepositoryImpl(remoteDataSource: remote, localDataSource: local);
});
