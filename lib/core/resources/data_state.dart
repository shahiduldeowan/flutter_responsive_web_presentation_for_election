abstract class DataState<T> {
  final T? data;

  const DataState({this.data});
}

class DataSuccess<T> extends DataState<T> {
  DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  DataFailed();
}
