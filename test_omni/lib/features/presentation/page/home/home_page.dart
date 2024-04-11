import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_omni/features/presentation/controllers/home/home_controller.dart';
import 'package:test_omni/features/presentation/widgets/elements_item.dart';

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
          () => ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ElementysWidget(
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
