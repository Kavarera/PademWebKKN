import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/belanja_page/views/belanja_page_view.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/detail_berita/views/detail_berita_view.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/beranda/views/beranda_view.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/list_berita/views/list_berita_view.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/profile_dusun/views/profile_dusun_view.dart';
import 'package:padem_arsip_digital/app/modules/login_page/views/login_page_view.dart';

class LandingPageController extends GetxController {
  var STATE = 0.obs;
  var _ISONNEWS = false.obs;
  var _idNews = 0.obs;

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

  void setNews(bool value, int id) {
    if (value == true) {
      if (STATE.value >= 0) {
        STATE.value = -1;
      } else {
        STATE.value--;
      }
      _idNews.value = id;
    }
    _ISONNEWS.value = value;
  }

  getPage(int value) {
    print("news = ${_ISONNEWS.value}");
    if (_ISONNEWS.value) {
      return toNews();
    } else {
      switch (value) {
        case 0:
          return BerandaView();
        case 1:
          return ProfileDusunView();
        case 2:
          return Text('Page 2');
        case 3:
          return ListBeritaView();
        case 4:
          return BelanjaPageView();
        default:
          return LoginPageView();
      }
    }
  }

  toNews() {
    return DetailBeritaView(
      BERITAID: _idNews.value,
    );
  }
}
