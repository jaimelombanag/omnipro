import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_omni/features/domain/entities/photos.dart';
import 'package:test_omni/features/domain/usecases/get_photos_use_case.dart';
import 'package:tuple/tuple.dart';

class HomeController extends GetxController {
  HomeController(this._getProductsUseCase);
  final GetPhotosUseCase _getProductsUseCase;
  RxList<Photos> pothos = <Photos>[].obs;
  var numberPage = 10.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData(numberPage.value);
  }

  fetchData(int start) async {
    final newPothos =
        await _getProductsUseCase.execute(Tuple2(numberPage.value, start));

    pothos.value = newPothos;
    debugPrint("------Tamaño de la Lista: ${pothos.length}");
  }

  Future<void> updatePage() async {
    numberPage.value += 10;
    fetchData(numberPage.value);
  }
}