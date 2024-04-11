import 'package:test_omni/features/data/models/paging_model.dart';

abstract class HomeRepository {
  Future<List<PagingModel>> getProducts(int page, int pageSize);
}
