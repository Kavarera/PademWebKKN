import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';

AppBar GetCoreAppBar(String title, int state) {
  return AppBar(
    title: Text(title),
    backgroundColor: CustomColors.OLIVE_GREEN,
    foregroundColor: Colors.white,
    elevation: 4.0,
    actions: <Widget>[
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Beranda"),
          decoration: BoxDecoration(
            color: state == 1 ? CustomColors.BRONZE : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.white,
              width: 1,
            ),
          ),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Profil Dusun"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Infografis"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Berita"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Produk dan Jasa"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        style: ButtonStyle(
          foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Login"),
        ),
      ),
    ],
  );
}
