import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:test_omni/features/data/models/paging_model.dart';
import 'package:test_omni/features/data/providers/network/apis/home_api.dart';
import 'package:test_omni/features/data/providers/network/app_exception.dart';
import 'package:test_omni/features/domain/repositories/home_repository.dart';

class HomeRepositoryIml extends HomeRepository {
  @override
  Future<List<PagingModel>> getProducts(int page, int pageSize) async {
    try {
      final response = await HomeAPI.getProducts(page, pageSize).request();
      List<dynamic> photos = response;
      var myList = photos
          .map<PagingModel>((json) => PagingModel.fromJson(json))
          .toList();

      return myList;
    } catch (e) {
      debugPrint(AppException().code);
      debugPrint(AppException().details);
      debugPrint(AppException().message);
      return [];
    }
  }

  List<PagingModel> parsePhotos(String responseBody) {
    final parsed =
        (jsonDecode(responseBody) as List).cast<Map<String, dynamic>>();

    return parsed
        .map<PagingModel>((json) => PagingModel.fromJson(json))
        .toList();
  }
}
