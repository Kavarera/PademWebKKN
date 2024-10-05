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
      appBar: adminAppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerAdmin(0),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ganti Gambar Beranda',
                      style: CustomTexts.HEADING_2(),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithoutLabel(
                      placeholder: 'Pilih gambar... (max 5)',
                      controller: _gambarBerandaController,
                      prefixIcon: Icon(Symbols.image),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 128,
                      width: double.infinity,
                      color: CustomColors.LIGHT_GRAY,
                      child: Center(child: Text('Preview gambar')),
                    ),
                    const SizedBox(height: 16),
                    primaryButton('Simpan', () {}),
                    const SizedBox(height: 16),
                    const Divider(color: CustomColors.DARK_GRAY),
                    const SizedBox(height: 16),
                    Text(
                      'Ganti Gambar Card',
                      style: CustomTexts.HEADING_2(),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithoutLabel(
                      placeholder: 'Pilih gambar untuk Profil Dusun...',
                      controller: _gambarProfilController,
                      prefixIcon: Icon(Symbols.image),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    textFieldWithoutLabel(
                      placeholder: 'Pilih gambar untuk Infografis...',
                      controller: _gambarInfografisController,
                      prefixIcon: Icon(Symbols.image),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    textFieldWithoutLabel(
                      placeholder: 'Pilih gambar untuk Berita...',
                      controller: _gambarBeritaController,
                      prefixIcon: Icon(Symbols.image),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    textFieldWithoutLabel(
                      placeholder: 'Pilih gambar untuk Layanan dan Jasa...',
                      controller: _gambarJasaController,
                      prefixIcon: Icon(Symbols.image),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      height: 128,
                      width: double.infinity,
                      color: CustomColors.LIGHT_GRAY,
                      child: Center(child: Text('Preview gambar')),
                    ),
                    const SizedBox(height: 16),
                    primaryButton('Simpan', () {}),
                    const SizedBox(height: 16),
                    const Divider(color: CustomColors.DARK_GRAY),
                    const SizedBox(height: 16),
                    Text(
                      'Ganti Sambutan Kepala Dusun',
                      style: CustomTexts.HEADING_2(),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                        placeholder: 'Sambutan Kepada Dusun',
                        controller: _sambutanController,
                        prefixIcon: Icon(Symbols.text_fields)),
                    const SizedBox(height: 16),
                    primaryButton('Simpan', () {}),
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
