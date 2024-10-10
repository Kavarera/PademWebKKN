import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomButtons.dart';

import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../../../core/widgets/CustomDrawerAdmin.dart';
import '../../../../core/widgets/CustomTextField.dart';
import '../controllers/home_admin_controller.dart';

class HomeAdminView extends GetView<HomeAdminController> {
  const HomeAdminView({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController _gambarBerandaController = TextEditingController();
    TextEditingController _gambarInfografisController = TextEditingController();
    TextEditingController _gambarProfilController = TextEditingController();
    TextEditingController _gambarJasaController = TextEditingController();
    TextEditingController _gambarBeritaController = TextEditingController();
    TextEditingController _sambutanController = TextEditingController();
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerAdmin(-1),
          Expanded(
            child: Center(
              child: Text(
                'Selamat Datang',
                style: CustomTexts.HEADING_1(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
