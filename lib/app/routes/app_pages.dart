import 'package:get/get.dart';

import '../modules/detail_berita/bindings/detail_berita_binding.dart';
import '../modules/detail_berita/views/detail_berita_view.dart';
import '../modules/guest_page/beranda/bindings/beranda_binding.dart';
import '../modules/guest_page/beranda/views/beranda_view.dart';
import '../modules/guest_page/list_berita/bindings/list_berita_binding.dart';
import '../modules/guest_page/list_berita/views/list_berita_view.dart';
import '../modules/guest_page/profile_dusun/bindings/profile_dusun_binding.dart';
import '../modules/guest_page/profile_dusun/views/profile_dusun_view.dart';
import '../modules/landing_page/bindings/landing_page_binding.dart';
import '../modules/landing_page/views/landing_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LANDING_PAGE;

  static final routes = [
    GetPage(
      name: _Paths.LANDING_PAGE,
      page: () => const LandingPageView(),
      binding: LandingPageBinding(),
    ),
    GetPage(
      name: _Paths.BERANDA,
      page: () => const BerandaView(),
      binding: BerandaBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_DUSUN,
      page: () => const ProfileDusunView(),
      binding: ProfileDusunBinding(),
    ),
    GetPage(
      name: _Paths.LIST_BERITA,
      page: () => const ListBeritaView(),
      binding: ListBeritaBinding(),
    ),
    GetPage(
      name: '${_Paths.DETAIL_BERITA}/:id',
      page: () => const DetailBeritaView(),
      binding: DetailBeritaBinding(),
    ),
  ];
}
