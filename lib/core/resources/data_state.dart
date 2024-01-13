abstract class DataState<T> {
  final T? data;
  final Object? error;

  const DataState({this.data, this.error});
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  DataFailed();
}

class DataError<T> extends DataState<T> {
  DataError({super.error});
}
