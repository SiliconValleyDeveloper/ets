import 'package:get/get.dart';

class RootAppController extends GetxController {
  //TODO: Implement RootAppController

  final activeIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


  void onSelectedTab(int index) {
      activeIndex.value = index;
  }
}
