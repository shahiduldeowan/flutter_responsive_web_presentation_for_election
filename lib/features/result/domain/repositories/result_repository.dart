import '../../../../core/resources/data_state.dart';
import '../entities/publish_result_entity.dart';

abstract class ResultRepository {
  Future<DataState<List<PublishResultEntity>>> getResult();
}
