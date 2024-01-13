// Dependency injection configuration

import '../../../core/di/dependencies_setup.dart' show getIt;
import '../data/data_sources/result_api_service.dart';
import '../data/repositories/result_repository_impl.dart';
import '../domain/repositories/result_repository.dart';
import '../domain/usecases/fetch_result_usecase.dart';
import '../presentation/blocs/result_bloc.dart';

void resultInjection() {
  getIt
    ..registerLazySingleton<ResultApiService>(() => ResultApiService(getIt()))
    ..registerLazySingleton<ResultRepository>(() => ResultRepositoryImpl(getIt()))
    ..registerLazySingleton<FetchResultUseCase>(() => FetchResultUseCase(getIt()))
    ..registerFactory<ResultBloc>(() => ResultBloc(getIt()));
}
