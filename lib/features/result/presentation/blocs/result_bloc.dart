import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/resources/data_state.dart';
import '../../domain/entities/publish_result_entity.dart';
import '../../domain/usecases/fetch_result_usecase.dart';

part 'result_event.dart';
part 'result_state.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc(this._fetchResultUseCase) : super(const StateResultLoading()) {
    on<EventFetchResult>(_fetchResult);
  }

  final FetchResultUseCase _fetchResultUseCase;

  Future<void> _fetchResult(EventFetchResult event, Emitter<ResultState> emit) async {
    final resultSate = await _fetchResultUseCase();

    if (resultSate is DataSuccess) {
      _emitState(emit, resultSate.data!);
    } else if (resultSate is DataFailed) {
      emit(StateResultError(error: resultSate.error));
    } else {
      emit(const StateResultEmpty());
    }
  }

  void _emitState(Emitter<ResultState> emit, List<PublishResultEntity> resultList) {
    if (state is StateResultLoaded) {
      final currentState = state as StateResultLoaded;
      emit(currentState.copyWith(results: resultList));

      return;
    }

    emit(StateResultLoaded(results: resultList));
  }
}
