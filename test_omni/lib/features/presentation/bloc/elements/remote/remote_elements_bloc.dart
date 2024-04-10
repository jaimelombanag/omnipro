import 'package:test_omni/core/resources/data_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_omni/features/domain/usecases/get_elements.dart';
import 'package:test_omni/features/presentation/bloc/elements/remote/remore_elements_state.dart';
import 'package:test_omni/features/presentation/bloc/elements/remote/remote_elements_event.dart';

class RemoteElemenstBloc
    extends Bloc<RemoteElementsEvent, RemoteElementsState> {
  final GetElementsUseCase _getElementsUseCase;
  RemoteElemenstBloc(this._getElementsUseCase)
      : super(const RemoteElementsLoading()) {
    on<GetElements>(onGetElements);
  }

  void onGetElements(
      GetElements event, Emitter<RemoteElementsState> emit) async {
    final dataState = await _getElementsUseCase();

    if (dataState is DataSuccess && dataState.data!.isNotEmpty) {
      emit(RemoteElementsDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(RemoteElementsError(dataState.error!));
    }
  }
}
