import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/modules/detail_berita/views/detail_berita_view.dart';

class ListBeritaController extends GetxController {
  var currentBeritaId = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  getBeritaPage() {
    return DetailBeritaView(
      BERITAID: currentBeritaId.value,
    );
  }
}
