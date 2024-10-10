import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/enums/product_dan_jasa_enum.dart';

import '../../../../core/colors/Colors_Value.dart';
import '../../../../routes/app_pages.dart';

class BuatProductDanJasaController extends GetxController {
  var fileNames = ''.obs;
  var isUploading = false.obs;
  PlatformFile? file;
  var selectedCategory = ProductJasaEnum.HOMESTAY.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void pickImage() async {
    FilePickerResult? resultImage = await FilePicker.platform.pickFiles();
    if (resultImage != null) {
      file = resultImage.files.first;
      fileNames.value = file!.name;
      print(file?.name);
    } else {
      Get.snackbar('Informasi', 'Pemilihan Gambar Dibatalkan',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  Future<String?> _uploadFile() async {
    if (file != null) {
      final pathStorage =
          'productjasa/${DateTime.now().microsecondsSinceEpoch}${file!.name}';
      final ref = await FirebaseStorage.instance.ref().child(pathStorage);
      SettableMetadata metadata =
          SettableMetadata(contentType: 'image/${file!.extension}');
      UploadTask? _uploadTask = ref.putData(file!.bytes!, metadata);
      final snapshot =
          await _uploadTask.whenComplete(() => print('Upload Berhasil'));

      print("Meta Data = ${snapshot.ref.getMetadata().toString()}");
      return await snapshot.ref.getDownloadURL();
    } else {
      return null;
    }
  }

  void saveProduct(
      String title, String content, String harga, String contact) async {
    if (title.isEmpty ||
        content.isEmpty ||
        harga.isEmpty ||
        contact.isEmpty ||
        file == null ||
        harga.isNumericOnly == false ||
        contact.isNumericOnly == false) {
      Get.snackbar('Error',
          'Semua bagian tidak boleh kosong dan harga serta contact harus angka',
          backgroundColor: Colors.red, colorText: Colors.white);
      return;
    }

    isUploading.value = true;
    String? linkUrl = await _uploadFile();
    print('Url Result : ${linkUrl?.toString()}');

    if (linkUrl != null) {
      final productData = {
        'title': title,
        'content': content,
        'harga': double.parse(harga),
        'contact': contact,
        'imageUrl': linkUrl.toString(),
        'category': selectedCategory.value.value,
      };

      await FirebaseFirestore.instance.collection('store').add(productData);
      Get.snackbar('Informasi', 'Product berhasil disimpan',
          backgroundColor: CustomColors.FOREST_GREEN);
      isUploading.value = false;
      Get.offAndToNamed(Routes.PRODUCT_JASA_ADMIN);
    } else {
      Get.snackbar('Error', 'Gagal Upload Gambar',
          backgroundColor: Colors.red, colorText: Colors.white);
    }
  }

  void changeCategory(ProductJasaEnum productJasaEnum) {
    selectedCategory.value = productJasaEnum;
  }
}
