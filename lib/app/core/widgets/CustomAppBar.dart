import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/modules/landing_page/controllers/landing_page_controller.dart';

AppBar getCoreAppBar(String title, LandingPageController controller) {
  final activeStyle = ButtonStyle(
    backgroundColor: WidgetStateProperty.all<Color>(CustomColors.BRONZE),
    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
    side: WidgetStateProperty.all<BorderSide>(
      BorderSide(
        color: Colors.white, // Border color
        width: 1, // Border width
      ),
    ),
  );
  final passiveStyle = ButtonStyle(
    foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
  );
  return AppBar(
    title: Text(title),
    leading: Image.asset('assets/images/logo_padem_lq.png'),
    backgroundColor: CustomColors.OLIVE_GREEN,
    foregroundColor: Colors.white,
    elevation: 4.0,
    actions: <Widget>[
      TextButton(
        onPressed: () {
          controller.changeState(0);
        },
        style: controller.STATE.value == 0 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Beranda"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {
          controller.changeState(1);
        },
        style: controller.STATE.value == 1 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Profil Dusun"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {
          controller.changeState(2);
        },
        style: controller.STATE.value == 2 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Infografis"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {
          controller.changeState(3);
        },
        style: controller.STATE.value == 3 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Berita"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {
          controller.changeState(4);
        },
        style: controller.STATE.value == 4 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Produk dan Jasa"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {
          controller.changeState(5);
        },
        style: controller.STATE.value == 5 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Login"),
        ),
      ),
    ],
  );
}

AppBar adminAppBar() {
  return AppBar(
    title: Text('Padem Pedia'),
    leading: Image.asset('assets/images/logo_padem_lq.png'),
    backgroundColor: CustomColors.OLIVE_GREEN,
    foregroundColor: Colors.white,
    elevation: 4.0,
  );
}
