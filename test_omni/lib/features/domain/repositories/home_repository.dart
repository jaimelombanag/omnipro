import 'package:test_omni/features/data/models/photos_model.dart';

abstract class HomeRepository {
  Future<List<PhotosModel>> getPhotos(int page, int pageSize);
}
