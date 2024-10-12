import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/routes/app_pages.dart';

Drawer drawerAdmin(int currState) {
  return Drawer(
    backgroundColor: CustomColors.FOREST_GREEN,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero, // This removes the rounded edges
    ),
    child: Container(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://cdn-icons-png.flaticon.com/512/9706/9706583.png',
                ),
                radius: 48,
              ),
              const SizedBox(height: 8),
              Text(
                'Admin',
                style: CustomTexts.HEADING_4(color: Colors.white),
              ),
            ],
          ),
          const SizedBox(height: 32),
          _buildDrawerItem(0, 'Berita', currState),
          _buildDrawerItem(1, 'Produk dan Jasa', currState),
          _buildDrawerItem(2, 'Logout', currState),
        ],
      ),
    ),
  );
}

Widget _buildDrawerItem(int index, String title, int currState) {
  return ListTile(
    hoverColor: CustomColors.OLIVE_GREEN,
    tileColor: index == currState
        ? CustomColors.OLIVE_GREEN
        : CustomColors.FOREST_GREEN,
    onTap: () {
      switch (index) {
        case 0:
          currState == index;
          Get.offAndToNamed(Routes.BERITA_ADMIN);
          break;
        case 1:
          Get.offAndToNamed(Routes.PRODUCT_JASA_ADMIN);
          break;
        case 2:
          FirebaseAuth.instance.signOut();
          Get.offAndToNamed(Routes.LANDING_PAGE);
          break;
      }
    },
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
