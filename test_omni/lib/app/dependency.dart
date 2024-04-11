import 'package:get/get.dart';
import 'package:test_omni/features/data/repositories/home_repository_impl.dart';

class DependencyCreator {
  static init() {
    Get.lazyPut(() => HomeRepositoryIml());
  }
}
