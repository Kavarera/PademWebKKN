import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/views/error_screen.dart';
import '../../../../core/widgets/CustomDrawerAdmin.dart';
import '../controllers/home_admin_controller.dart';

class HomeAdminView extends GetView<HomeAdminController> {
  const HomeAdminView({super.key});
  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser == null) {
      return ErrorScreen('Tidak Memiliki izin!');
    }
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerAdmin(-1),
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'assets/images/background.JPG',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  color: Color.fromARGB(120, 255, 255, 255),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/logo_padem.png', width: 360),
                        Text(
                          'Selamat Datang',
                          style: CustomTexts.HEADING_1(),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
