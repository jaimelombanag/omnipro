import 'package:test_omni/app/usecases/photos_usecase.dart';
import 'package:test_omni/features/data/models/photos_model.dart';
import 'package:test_omni/features/domain/repositories/home_repository.dart';
import 'package:tuple/tuple.dart';

class GetPhotosUseCase extends PhotosUseCase<PhotosModel, Tuple2<int, int>> {
  final HomeRepository _repo;

  GetPhotosUseCase(this._repo);

  @override
  Future<List<PhotosModel>> execute(Tuple2 params) {
    return _repo.getPhotos(params.item1, params.item2);
  }
}
