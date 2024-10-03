import 'package:get/get.dart';

import '../controllers/detailbelanja_page_controller.dart';

class DetailbelanjaPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailbelanjaPageController>(
      () => DetailbelanjaPageController(),
    );
  }
}
