import 'package:test_omni/app/usecases/pram_usecase.dart';
import 'package:test_omni/features/data/models/paging_model.dart';
import 'package:test_omni/features/domain/repositories/home_repository.dart';
import 'package:tuple/tuple.dart';

class GetProductsUseCase extends ParamUseCase<PagingModel, Tuple2<int, int>> {
  final HomeRepository _repo;

  GetProductsUseCase(this._repo);

  @override
  Future<List<PagingModel>> execute(Tuple2 params) {
    return _repo.getProducts(params.item1, params.item2);
  }
}
