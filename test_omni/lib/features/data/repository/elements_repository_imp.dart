import 'package:test_omni/core/resources/data_states.dart';
import 'package:test_omni/features/data/models/elements.model.dart';
import 'package:test_omni/features/domain/repository/elements_repository.dart';

class ElementsRepositoryImpl implements ElementsRepository {
  @override
  Future<DataStates<List<ElementsModel>>> getElements() {
    throw UnimplementedError();
  }
}
