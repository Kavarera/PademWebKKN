import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomDrawerAdmin.dart';
import 'package:padem_arsip_digital/app/models/product_jasa_model.dart';

import '../../../../core/colors/Colors_Value.dart';
import '../../../../core/enums/product_dan_jasa_enum.dart';
import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/views/error_screen.dart';
import '../../../../core/widgets/CustomButtons.dart';
import '../../../../core/widgets/CustomTextField.dart';
import '../controllers/buat_product_dan_jasa_controller.dart';

class BuatProductDanJasaView extends GetView<BuatProductDanJasaController> {
  const BuatProductDanJasaView({super.key});
  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser == null) {
      return ErrorScreen('Tidak Memiliki izin!');
    }

    TextEditingController _judulController = TextEditingController();
    TextEditingController _kontenController = TextEditingController();
    TextEditingController _hargaController = TextEditingController();
    TextEditingController _contactController = TextEditingController();

    ProductJasaFirestoreModel? _product =
        Get.arguments as ProductJasaFirestoreModel?;

    if (_product != null) {
      _judulController.text = _product.title;
      _kontenController.text = _product.content;
      _hargaController.text = _product.harga.toString();
      _contactController.text = _product.contact;
    }

    return Scaffold(
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
                    Text(
                      'Buat Product atau Jasa',
                      style: CustomTexts.HEADING_2(),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _judulController,
                      placeholder: 'Nama',
                      prefixIcon: Icon(Symbols.text_fields),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _kontenController,
                      placeholder: 'Deskripsi',
                      prefixIcon: Icon(Symbols.text_fields),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _hargaController,
                      placeholder: 'Harga',
                      prefixIcon: Icon(Symbols.money),
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: _contactController,
                      placeholder: 'Nomor Pemilik',
                      prefixIcon: Icon(Symbols.phone),
                    ),
                    const SizedBox(height: 16),
                    DropdownButtonFormField<ProductJasaEnum>(
                      decoration: InputDecoration(
                        icon: Icon(Symbols.category),
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                      value: ProductJasaEnum.HOMESTAY,
                      items: ProductJasaEnum.values
                          .map((ProductJasaEnum category) {
                        return DropdownMenuItem<ProductJasaEnum>(
                          value: category,
                          child: Text(category.name.toString().toUpperCase()),
                        );
                      }).toList(),
                      onChanged: (ProductJasaEnum? newValue) {
                        controller.changeCategory(newValue!);
                      },
                      isExpanded: true,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                            CustomColors.LIGHT_OCEAN_BLUE,
                          ),
                        ),
                        onPressed: () {
                          controller.pickImage();
                        },
                        child: Obx(
                          () {
                            return Text(
                              controller.fileNames.value.isEmpty
                                  ? 'Pilih Gambar'
                                  : controller.fileNames.value,
                              style: CustomTexts.HEADING_3(color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Obx(() => controller.isUploading.value
                        ? Center(
                            child: CircularProgressIndicator(
                              color: CustomColors.FOREST_GREEN,
                            ),
                          )
                        : primaryButton(
                            'Simpan',
                            () {
                              // if (news != null) {
                              //   controller.updateNews(
                              //     news,
                              //     _judulController.text,
                              //     _kontenController.text,
                              //   );
                              // } else {

                              controller.saveProduct(
                                _judulController.text,
                                _kontenController.text,
                                _hargaController.text,
                                _contactController.text,
                              );
                            },
                          ))
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
