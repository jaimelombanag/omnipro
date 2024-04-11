import 'package:get/get.dart';
import 'package:test_omni/features/presentation/controllers/home/home_controller.dart';
import '../../../data/repositories/home_repository_impl.dart';
import '../../../domain/usecases/get_products_use_case.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetProductsUseCase(Get.find<HomeRepositoryIml>()));
    Get.put(HomeController(Get.find()), permanent: true);
  }
}
