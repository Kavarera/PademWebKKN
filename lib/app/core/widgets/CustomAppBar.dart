import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';

class CustomCoreAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final int state;

  CustomCoreAppBar(this.title, this.state);

  @override
  Widget build(BuildContext context) {
    return _GetCoreAppBar(title, state);
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

AppBar _GetCoreAppBar(String title, int currState) {
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
    leading: FlutterLogo(),
    backgroundColor: CustomColors.OLIVE_GREEN,
    foregroundColor: Colors.white,
    elevation: 4.0,
    actions: <Widget>[
      TextButton(
        onPressed: () {},
        style: currState == 0 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Beranda"),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      TextButton(
        onPressed: () {},
        style: currState == 1 ? activeStyle : passiveStyle,
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
        style: currState == 2 ? activeStyle : passiveStyle,
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
        style: currState == 3 ? activeStyle : passiveStyle,
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
        style: currState == 4 ? activeStyle : passiveStyle,
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
        style: currState == 5 ? activeStyle : passiveStyle,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Text("Login"),
        ),
      ),
    ],
  );
}
