import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../../../core/widgets/CustomButtons.dart';
import '../../../../core/widgets/CustomDrawerAdmin.dart';
import '../../../../core/widgets/CustomTextField.dart';
import '../controllers/buat_berita_controller.dart';

class BuatBeritaView extends GetView<BuatBeritaController> {
  const BuatBeritaView({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController _judulController = TextEditingController();
    TextEditingController _kontenController = TextEditingController();
    TextEditingController _gambarController = TextEditingController();
    return Scaffold(
      appBar: adminAppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerAdmin(3),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Buat Berita',
                      style: CustomTexts.HEADING_2(),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _judulController,
                      placeholder: 'Judul',
                      prefixIcon: Icon(Symbols.text_fields),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _kontenController,
                      placeholder: 'Isi Berita',
                      prefixIcon: Icon(Symbols.text_fields),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithoutLabel(
                      controller: _gambarController,
                      placeholder: 'Gambar (JPG, JPEG, PNG, WEBP) (max 5)',
                      prefixIcon: Icon(Symbols.image),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    primaryButton('Simpan', () {})
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
