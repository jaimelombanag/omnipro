import 'package:test_omni/core/usecase/usecase.dart';
import 'package:test_omni/features/domain/entities/elements.dart';
import 'package:test_omni/features/domain/repository/elements_repository.dart';

import '../../../core/resources/data_states.dart';

class GetElementsUseCase
    implements UseCase<DataStates<List<ElementsEntity>>, void> {
  final ElementsRepository _elementsRepository;

  GetElementsUseCase(this._elementsRepository);

  @override
  Future<DataStates<List<ElementsEntity>>> call({void params}) {
    return _elementsRepository.getElements();
  }
}
