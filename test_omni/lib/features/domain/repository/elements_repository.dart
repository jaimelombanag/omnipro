import 'package:test_omni/core/resources/data_states.dart';
import 'package:test_omni/features/domain/entities/elements.dart';

abstract class ElementsRepository {
  Future<DataStates<List<ElementsEntity>>> getElements();
}
