import 'package:get/get.dart';
import 'package:test_omni/features/presentation/controllers/home/home_controller.dart';
import '../../../data/repositories/home_repository_impl.dart';
import '../../../domain/usecases/get_photos_use_case.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => GetPhotosUseCase(Get.find<HomeRepositoryIml>()));
    Get.put(HomeController(Get.find()), permanent: true);
  }
}
