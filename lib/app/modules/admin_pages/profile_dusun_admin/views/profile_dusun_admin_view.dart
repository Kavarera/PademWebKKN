import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomDrawerAdmin.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomTextField.dart';

import '../../../../core/colors/Colors_Value.dart';
import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../../../core/widgets/CustomButtons.dart';
import '../controllers/profile_dusun_admin_controller.dart';

class ProfileDusunAdminView extends GetView<ProfileDusunAdminController> {
  const ProfileDusunAdminView({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController _logoController = TextEditingController();
    TextEditingController _filosofiController = TextEditingController();
    TextEditingController _visiController = TextEditingController();
    TextEditingController _misiController = TextEditingController();
    TextEditingController _gambarDukuhController = TextEditingController();
    TextEditingController _namaDukuhController = TextEditingController();
    TextEditingController _gambarRwController = TextEditingController();
    TextEditingController _namaRwController = TextEditingController();
    TextEditingController _gambarRt1Controller = TextEditingController();
    TextEditingController _namaRt1Controller = TextEditingController();
    TextEditingController _gambarRt2Controller = TextEditingController();
    TextEditingController _namaRt2Controller = TextEditingController();
    TextEditingController _gambarRt3Controller = TextEditingController();
    TextEditingController _namaRt3Controller = TextEditingController();
    TextEditingController _gambarRt4Controller = TextEditingController();
    TextEditingController _namaRt4Controller = TextEditingController();
    TextEditingController _gambarRt5Controller = TextEditingController();
    TextEditingController _namaRt5Controller = TextEditingController();
    TextEditingController _gambarRt6Controller = TextEditingController();
    TextEditingController _namaRt6Controller = TextEditingController();
    TextEditingController _gambarRt7Controller = TextEditingController();
    TextEditingController _namaRt7Controller = TextEditingController();
    return Scaffold(
      appBar: adminAppBar(),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          drawerAdmin(1),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Logo Dusun', style: CustomTexts.HEADING_2()),
                    const SizedBox(height: 16),
                    textFieldWithoutLabel(
                      controller: _logoController,
                      placeholder: 'Pilih logo... (JPG, JPEG, PNG, WEBP)',
                      prefixIcon: Icon(Symbols.image),
                      readOnly: true,
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _filosofiController,
                      placeholder: 'Filosofi logo',
                      prefixIcon: Icon(Symbols.text_fields),
                    ),
                    const SizedBox(height: 16),
                    primaryButton('Simpan', () {}),
                    const SizedBox(height: 16),
                    const Divider(color: CustomColors.DARK_GRAY),
                    const SizedBox(height: 16),
                    Text('Visi & Misi Dusun', style: CustomTexts.HEADING_2()),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _visiController,
                      placeholder: 'Visi',
                      prefixIcon: Icon(Symbols.text_fields),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _misiController,
                      placeholder: 'Misi',
                      prefixIcon: Icon(Symbols.text_fields),
                    ),
                    const SizedBox(height: 16),
                    primaryButton('Simpan', () {}),
                    const SizedBox(height: 16),
                    const Divider(color: CustomColors.DARK_GRAY),
                    const SizedBox(height: 16),
                    Text('Struktur Pemerintahan Dusun',
                        style: CustomTexts.HEADING_2()),
                    const SizedBox(height: 16),
                    Text('Kepala Dukuh', style: CustomTexts.HEADING_3()),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarDukuhController,
                              placeholder: 'Gambar',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaDukuhController,
                              placeholder: 'Nama',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text('Ketua RW', style: CustomTexts.HEADING_3()),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRwController,
                              placeholder: 'Gambar',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRwController,
                              placeholder: 'Nama',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Text('Ketua RT', style: CustomTexts.HEADING_3()),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRt1Controller,
                              placeholder: 'Gambar Ketua RT 1',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRt1Controller,
                              placeholder: 'Nama Ketua RT 1',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRt2Controller,
                              placeholder: 'Gambar Ketua RT 2',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRt2Controller,
                              placeholder: 'Nama Ketua RT 2',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRt3Controller,
                              placeholder: 'Gambar Ketua RT 3',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRt3Controller,
                              placeholder: 'Nama Ketua RT 3',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRt4Controller,
                              placeholder: 'Gambar Ketua RT 4',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRt4Controller,
                              placeholder: 'Nama Ketua RT 4',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRt5Controller,
                              placeholder: 'Gambar Ketua RT 5',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRt5Controller,
                              placeholder: 'Nama Ketua RT 5',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRt6Controller,
                              placeholder: 'Gambar Ketua RT 6',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRt6Controller,
                              placeholder: 'Nama Ketua RT 6',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: textFieldWithoutLabel(
                              controller: _gambarRt7Controller,
                              placeholder: 'Gambar Ketua RT 7',
                              prefixIcon: Icon(Symbols.image),
                              readOnly: true,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: textFieldWithLabel(
                              controller: _namaRt7Controller,
                              placeholder: 'Nama Ketua RT 7',
                              prefixIcon: Icon(Symbols.text_fields),
                            ),
                          ),
                        ),
                      ],
                    ),
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
