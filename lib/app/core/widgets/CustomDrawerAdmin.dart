import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';

Drawer drawerAdmin(int currState) {
  return Drawer(
    backgroundColor: CustomColors.FOREST_GREEN,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.zero, // This removes the rounded edges
    ),
    child: ListView(
      padding: const EdgeInsets.symmetric(vertical: 16),
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
        _buildDrawerItem(0, 'Beranda', currState),
        _buildDrawerItem(1, 'Profile Dusun', currState),
        _buildDrawerItem(2, 'Infografis', currState),
        _buildDrawerItem(3, 'Berita', currState),
        _buildDrawerItem(4, 'Produk dan Jasa', currState),
        _buildDrawerItem(5, 'Logout', currState),
      ],
    ),
  );
}

Widget _buildDrawerItem(int index, String title, int currState) {
  return ListTile(
    hoverColor: CustomColors.OLIVE_GREEN,
    tileColor: index == currState
        ? CustomColors.OLIVE_GREEN
        : CustomColors.FOREST_GREEN,
    onTap: () {},
    title: Text(
      title,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
