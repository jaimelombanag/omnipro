import 'package:equatable/equatable.dart';
import 'package:dio/dio.dart';
import 'package:test_omni/features/domain/entities/elements.dart';

abstract class RemoteElementsState extends Equatable {
  final List<ElementsEntity>? elements;
  final DioError? error;

  const RemoteElementsState({this.elements, this.error});

  @override
  List<Object> get props => [elements!, error!];
}

class RemoteElementsLoading extends RemoteElementsState {
  const RemoteElementsLoading();
}

class RemoteElementsDone extends RemoteElementsState {
  const RemoteElementsDone(List<ElementsEntity> element)
      : super(elements: element);
}

class RemoteElementsError extends RemoteElementsState {
  const RemoteElementsError(DioError error) : super(error: error);
}
