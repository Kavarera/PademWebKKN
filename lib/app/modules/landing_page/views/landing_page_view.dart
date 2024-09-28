import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomAppBar.dart';
import '../../../core/colors/Colors_Value.dart';
import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 1100) {
              return AppBar(
                title: Text('Padem Pedia'),
                leading: FlutterLogo(),
                backgroundColor: CustomColors.OLIVE_GREEN,
                foregroundColor: Colors.white,
                elevation: 4.0,
                actions: [
                  IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu),
                  ),
                ],
              );
            } else {
              return Obx(() => getCoreAppBar('Padem Pedia', controller));
            }
          })
          // Obx(() {
          //   return getCoreAppBar('Padem Pedia', controller);
          // }),
          ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            _buildDrawerItem(0, 'Beranda'),
            _buildDrawerItem(1, 'Profile Dusun'),
            _buildDrawerItem(2, 'Infografis'),
            _buildDrawerItem(3, 'Berita'),
            _buildDrawerItem(4, 'Produk dan Jasa'),
            _buildDrawerItem(5, 'Login'),
          ],
        ),
      ),
      body: Obx(() => controller.getPage(controller.STATE.value)),
    );
  }

  Widget _buildDrawerItem(int index, String title) {
    return ListTile(
      title: Text(title),
      onTap: () {
        controller.changeState(index);
        Get.back(); // Close the drawer
      },
    );
  }
}
