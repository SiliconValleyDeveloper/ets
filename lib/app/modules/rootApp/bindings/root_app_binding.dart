import 'package:get/get.dart';

import '../controllers/root_app_controller.dart';

class RootAppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RootAppController>(
      () => RootAppController(),
    );
  }
}
