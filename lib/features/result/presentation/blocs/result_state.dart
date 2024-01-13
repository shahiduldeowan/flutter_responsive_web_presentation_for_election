part of 'result_bloc.dart';

abstract class ResultState extends Equatable {
  const ResultState({this.results, this.error});

  final List<PublishResultEntity>? results;
  final Object? error;

  @override
  List<Object?> get props => [results, error];
}

class StateResultLoading extends ResultState {
  const StateResultLoading();
}

class StateResultEmpty extends ResultState {
  const StateResultEmpty();
}

class StateResultError extends ResultState {
  const StateResultError({super.error});
}

class StateResultLoaded extends ResultState {
  const StateResultLoaded({required super.results});

  StateResultLoaded copyWith({List<PublishResultEntity>? results}) {
    return StateResultLoaded(
      results: results ?? this.results,
    );
  }
}
