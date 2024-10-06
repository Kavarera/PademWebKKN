import 'package:get/get.dart';

import '../controllers/berita_admin_controller.dart';

class BeritaAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BeritaAdminController>(
      () => BeritaAdminController(),
    );
  }
}
