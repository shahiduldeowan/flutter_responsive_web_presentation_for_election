import '../../../../core/resources/data_state.dart';
import '../../../../core/use_case/use_case.dart';
import '../entities/publish_result_entity.dart';
import '../repositories/result_repository.dart';

class FetchResultUseCase extends UseCase<DataState<List<PublishResultEntity>>, void> {
  final ResultRepository repository;

  FetchResultUseCase(this.repository);

  @override
  Future<DataState<List<PublishResultEntity>>> call({void param}) {
    return repository.getResult();
  }
}
