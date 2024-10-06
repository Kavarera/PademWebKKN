import 'package:get/get.dart';

import '../controllers/profile_dusun_admin_controller.dart';

class ProfileDusunAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileDusunAdminController>(
      () => ProfileDusunAdminController(),
    );
  }
}
