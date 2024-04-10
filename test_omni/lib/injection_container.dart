import 'package:get_it/get_it.dart';
import 'package:test_omni/features/data/repository/elements_repository_imp.dart';
import 'package:test_omni/features/domain/repository/elements_repository.dart';
import 'package:test_omni/features/domain/usecases/get_elements.dart';
import 'package:test_omni/features/presentation/bloc/elements/remote/remote_elements_bloc.dart';

final singleton = GetIt.instance;

Future<void> initializeDependencies() async {
  singleton.registerSingleton<ElementsRepository>(ElementsRepositoryImpl());

  //UseCases
  singleton
      .registerSingleton<GetElementsUseCase>(GetElementsUseCase(singleton()));

  //Blocs
  singleton.registerFactory<RemoteElemenstBloc>(
      () => RemoteElemenstBloc(singleton()));
}
