import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/publish_result_entity.dart';

part 'result_event.dart';
part 'result_state.dart';

class ResultBloc extends Bloc<ResultEvent, ResultState> {
  ResultBloc() : super(const StateResultLoading()) {
    on<EventFetchResult>(_fetchResult);
  }

  Future<void> _fetchResult(EventFetchResult event, Emitter<ResultState> emit) async {}
}
