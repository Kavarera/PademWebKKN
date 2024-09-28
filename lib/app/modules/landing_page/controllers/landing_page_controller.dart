import 'package:get/get.dart';

class LandingPageController extends GetxController {
  var STATE = 0.obs;

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

  void changeState(int i) {
    this.STATE.value = i;
  }
}
