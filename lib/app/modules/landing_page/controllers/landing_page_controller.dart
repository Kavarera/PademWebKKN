import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/beranda/views/beranda_view.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/list_berita/views/list_berita_view.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/profile_dusun/views/profile_dusun_view.dart';
import 'package:padem_arsip_digital/app/modules/login_page/views/login_page_view.dart';

class LandingPageController extends GetxController {
  var STATE = 0.obs;

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

  void changeState(int i) {
    this.STATE.value = i;
  }

  getPage(int value) {
    switch (value) {
      case 0:
        return BerandaView();
      // return DusunProfilePage();
      case 1:
        return ProfileDusunView();
      case 2:
        return Text('Page 2');
      case 3:
        return Text('Page 2');
      case 4:
        return ListBeritaView();
      default:
        return LoginPageView();
    }
  }
}
