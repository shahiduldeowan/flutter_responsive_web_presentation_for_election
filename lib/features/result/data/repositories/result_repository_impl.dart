import '../../../../core/resources/data_state.dart';
import '../../domain/entities/publish_result_entity.dart';
import '../../domain/repositories/result_repository.dart';
import '../datasources/result_api_service.dart';

class ResultRepositoryImpl implements ResultRepository {
  ResultRepositoryImpl(this._apiService);

  final ResultApiService _apiService;

  @override
  Future<DataState<List<PublishResultEntity>>> getResult() {
    return _apiService.fetchResult();
  }
}
