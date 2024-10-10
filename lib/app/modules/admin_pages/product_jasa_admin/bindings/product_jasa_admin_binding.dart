import 'package:get/get.dart';

import '../controllers/product_jasa_admin_controller.dart';

class ProductJasaAdminBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProductJasaAdminController>(
      () => ProductJasaAdminController(),
    );
  }
}
