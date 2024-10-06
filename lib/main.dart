import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/list_berita/bindings/list_berita_binding.dart';
import 'package:padem_arsip_digital/app/modules/landing_page/bindings/landing_page_binding.dart';

import 'app/routes/app_pages.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    GetMaterialApp(
      title: "Padem Digital",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: LandingPageBinding(),
    ),
  );
}
