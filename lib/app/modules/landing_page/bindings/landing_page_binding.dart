import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/infografis/controllers/infografis_controller.dart';
import 'package:padem_arsip_digital/app/modules/login_page/controllers/login_page_controller.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LandingPageController>(
      () => LandingPageController(),
    );
    Get.lazyPut<InfografisController>(
      () => InfografisController(),
    );
    Get.lazyPut<LoginPageController>(
      () => LoginPageController(),
    );
  }
}
