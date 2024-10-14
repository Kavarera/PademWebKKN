import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/belanja_page/controllers/belanja_page_controller.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/detail_berita/controllers/detail_berita_controller.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/infografis/controllers/infografis_controller.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/list_berita/controllers/list_berita_controller.dart';
import 'package:padem_arsip_digital/app/modules/login_page/controllers/login_page_controller.dart';

import '../../guest_page/profile_dusun/controllers/profile_dusun_controller.dart';
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
    Get.lazyPut<BelanjaPageController>(
      () => BelanjaPageController(),
    );
    Get.lazyPut<ListBeritaController>(
      () => ListBeritaController(),
    );
    Get.lazyPut<DetailBeritaController>(
      () => DetailBeritaController(),
    );
    Get.lazyPut<ProfileDusunController>(
      () => ProfileDusunController(),
    );
  }
}
