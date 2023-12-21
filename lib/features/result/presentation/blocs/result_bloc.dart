// import 'dart:async';

// import 'package:equatable/equatable.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/domain/entities/result_entity.dart';
// import 'package:flutter_responsive_web_presentation_for_election/features/result/domain/usecases/fetch_result_usecase.dart';

// part 'result_event.dart';
// part 'result_state.dart';

// class ResultBloc extends Bloc<ResultEvent, ResultState> {
//   final FetchResultUseCase fetchResultUseCase;

//   ResultBloc({
//     @required FetchResultUseCase fetchResultUseCase
//   })  : this.fetchResultUseCase = fetchResultUseCase,
//         super(ResultState(status: ResultStateStatus.init));

//   @override
//   Stream<ResultState> mapEventToState(ResultEvent event) async* {
//     if (event is EventFetchResult) {
//       yield* _handleFetchPD(event);
//     }
//   }

//   Stream<ResultState> _handleFetchPD(EventFetchResult event) async* {
//     yield state.copyWith(status: ResultStateStatus.showLoading);
//     final result = await fetchResultUseCase(FetchResultParam(id: event.id));
//     yield state.copyWith(status: ResultStateStatus.hideLoading);
//     yield result.fold(
//       (failure) => state.copyWith(status: ResultStateStatus.loadedFailed, errorMessage: 'Có lỗi xảy ra. Vui lòng thử lại.'),
//       (data) => state.copyWith(status: ResultStateStatus.loadedSuccess, detail: data)
//     );
//   }
// }
