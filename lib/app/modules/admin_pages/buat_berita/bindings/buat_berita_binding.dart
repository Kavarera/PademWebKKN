import 'package:get/get.dart';

import '../controllers/buat_berita_controller.dart';

class BuatBeritaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuatBeritaController>(
      () => BuatBeritaController(),
    );
  }
}
