import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';

class BuatBeritaController extends GetxController {
  PlatformFile? file;
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
      print(file?.name);
    } else {
      Get.snackbar('Informasi', 'Pemilihan Gambar Dibatalkan');
    }
  }

  void saveNews(String title, String description) async {
    print('saving news');
    String? linkUrl = await _uploadFile();
    print('eee:${linkUrl?.toString()}');
    //upload it to firebase database
    if (linkUrl != null) {
      final newsData = {
        'title': title,
        'description': description,
        'imageUrl': linkUrl,
        'createdAt': DateTime.now().toIso8601String(),
      };

      await FirebaseFirestore.instance.collection('news').add(newsData);
      Get.snackbar('Informasi', 'Berita berhasil disimpan',
          backgroundColor: CustomColors.FOREST_GREEN);
    } else {
      Get.snackbar('Error', 'Gagal mengunggah gambar',
          backgroundColor: Colors.red);
    }
  }

  Future<String?> _uploadFile() async {
    if (file != null) {
      final pathStorage =
          'berita/${DateTime.now().microsecondsSinceEpoch}${file!.name}';
      final ref = await FirebaseStorage.instance.ref().child(pathStorage);
      UploadTask? _uploadTask = ref.putData(file!.bytes!);
      final snapshot =
          await _uploadTask.whenComplete(() => print('Upload Berhasil'));
      return await snapshot.ref.getDownloadURL();
    } else {
      return null;
    }
  }
}
