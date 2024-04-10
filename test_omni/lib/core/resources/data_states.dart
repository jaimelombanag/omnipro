abstract class DataStates<T> {
  final T? data;
  final int? error;

  const DataStates({this.data, this.error});
}

class DataSuccess<T> extends DataStates<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataStates<T> {
  const DataFailed(int error) : super(error: error);
}
