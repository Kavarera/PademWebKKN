import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/views/error_screen.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/infografis/views/widgets/widget_destinasi_wisata.dart';

import '../views/widgets/widget_penduduk.dart';
import '../views/widgets/widget_sejarah.dart';

class InfografisController extends GetxController {
  var STATE = 'Sejarah'.obs;
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

  void changeState(String s) {
    STATE.value = s;
  }

  getCurrentState(BuildContext context) {
    switch (STATE.value) {
      case 'Sejarah':
        return SejarahWidgetState();
      case 'Penduduk':
        return PendudukWidgetState(context);
      case 'Destinasi Wisata':
        return DestinasiWisataWidgetState();
      default:
        return ErrorScreen('Terjadi Kesalahan');
    }
  }
}
