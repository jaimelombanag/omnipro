// ignore_for_file: deprecated_member_use

// ignore: depend_on_referenced_packages
import 'package:dio/dio.dart';

abstract class DataStates<T> {
  final T? data;
  final DioError? error;

  const DataStates({this.data, this.error});
}

class DataSuccess<T> extends DataStates<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataStates<T> {
  const DataFailed(DioError error) : super(error: error);
}
