import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:padem_arsip_digital/app/routes/app_pages.dart';

import '../../../../core/colors/Colors_Value.dart';
import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/views/error_screen.dart';
import '../../../../core/widgets/CustomDrawerAdmin.dart';
import '../../../../core/widgets/CustomTextField.dart';
import '../controllers/product_jasa_admin_controller.dart';

class ProductJasaAdminView extends GetView<ProductJasaAdminController> {
  const ProductJasaAdminView({super.key});
  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser == null) {
      return ErrorScreen('Tidak Memiliki izin!');
    }
    double width = MediaQuery.of(context).size.width;
    TextEditingController searchController = TextEditingController();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.offAndToNamed(Routes.BUAT_PRODUCT_DAN_JASA);
          },
          backgroundColor: CustomColors.OLIVE_GREEN,
          foregroundColor: Colors.white,
          child: Icon(Symbols.add),
        ),
        body: Row(
          children: [
            drawerAdmin(1),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: width,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Produk dan Jasa',
                        style: CustomTexts.HEADING_2(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      textFieldWithLabel(
                        controller: searchController,
                        placeholder: 'Cari Produk atau Jasa...',
                        suffixIcon: Icon(Symbols.search),
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
