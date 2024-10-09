import 'package:get/get.dart';

import '../controllers/belanja_page_controller.dart';

class BelanjaPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BelanjaPageController>(
      () => BelanjaPageController(),
    );
  }
}
