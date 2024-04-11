import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_omni/features/data/providers/network/app_exception.dart';
import 'package:test_omni/features/domain/entities/photos.dart';
import 'package:test_omni/features/domain/usecases/get_photos_use_case.dart';
import 'package:tuple/tuple.dart';

class HomeController extends GetxController {
  HomeController(this._getProductsUseCase);
  final GetPhotosUseCase _getProductsUseCase;
  RxList<Photos> pothos = <Photos>[].obs;
  var numberPage = 10.obs;
  var loading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchData(numberPage.value);
  }

  fetchData(int start) async {
    loading.value = true;
    final newPhotos =
        await _getProductsUseCase.execute(Tuple2(numberPage.value, start));

    if (newPhotos.isEmpty) {
      Future.delayed(const Duration(milliseconds: 4000), () {
        loading.value = false;
        messageError();
      });
    } else {
      loading.value = false;
      pothos.value = newPhotos;
      debugPrint("------Tamaño de la Lista: ${pothos.length}");
    }
  }

  Future<void> updatePage() async {
    numberPage.value += 10;
    fetchData(numberPage.value);
  }

  void messageError() {
    var errorRersponse = AppException();
    Get.defaultDialog(
        title: '',
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("No fue posible realizar la solicitud"),
            Text("Error: ${errorRersponse.obs.stream.first.toString()}"),
            SizedBox(
              height: 30.0,
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              child: Text(
                'Aceptar',
                style: TextStyle(color: Colors.black, fontSize: 16.0),
              ),
            )
          ],
        ),
        radius: 10.0);
  }
}
