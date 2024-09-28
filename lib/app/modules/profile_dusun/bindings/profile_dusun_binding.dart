import 'package:get/get.dart';

import '../controllers/profile_dusun_controller.dart';

class ProfileDusunBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileDusunController>(
      () => ProfileDusunController(),
    );
  }
}
