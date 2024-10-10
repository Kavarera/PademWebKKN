import 'package:get/get.dart';

import '../controllers/buat_product_dan_jasa_controller.dart';

class BuatProductDanJasaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BuatProductDanJasaController>(
      () => BuatProductDanJasaController(),
    );
  }
}
