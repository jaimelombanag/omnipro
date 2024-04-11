import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_omni/features/presentation/controllers/home/home_controller.dart';
import 'package:test_omni/features/presentation/widgets/photos_item.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(
          () => Text(
            'Tamaño Lista ${controller.pothos.length}',
            style: const TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: RefreshIndicator(
        displacement: 250,
        backgroundColor: Colors.black,
        color: Colors.red,
        strokeWidth: 3,
        onRefresh: () {
          return controller.updatePage();
        },
        child: Obx(
          () => controller.loading.value
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PhotosWidget(
                      element: controller.pothos[index],
                    );
                  },
                  itemCount: controller.pothos.length,
                ),
        ),
      ),
    );
  }
}
