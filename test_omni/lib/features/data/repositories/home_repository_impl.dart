import 'package:flutter/foundation.dart';
import 'package:test_omni/features/data/models/photos_model.dart';
import 'package:test_omni/features/data/providers/network/apis/home_api.dart';
import 'package:test_omni/features/data/providers/network/app_exception.dart';
import 'package:test_omni/features/domain/repositories/home_repository.dart';

class HomeRepositoryIml extends HomeRepository {
  @override
  Future<List<PhotosModel>> getPhotos(int page, int pageSize) async {
    try {
      final response = await HomeAPI.getPhotos(page, pageSize).request();
      List<dynamic> photos = response;
      var myList = photos
          .map<PhotosModel>((json) => PhotosModel.fromJson(json))
          .toList();

      return myList;
    } catch (e) {
      debugPrint(AppException().code);
      debugPrint(AppException().details);
      debugPrint(AppException().message);
      return [];
    }
  }
}
