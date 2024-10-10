import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/models/news_model.dart';
import 'package:padem_arsip_digital/app/routes/app_pages.dart';

class BuatBeritaController extends GetxController {
  PlatformFile? file;
  var fileNames = ''.obs;
  var isUploading = false.obs;
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
      Get.snackbar('Informasi', 'Pemilihan Gambar Dibatalkan');
    }
  }

  void saveNews(String title, String description) async {
    if (title.isEmpty || description.isEmpty || file == null) {
      Get.snackbar('Error', 'Judul, Deskripsi dan Gambar tidak boleh kosong',
          backgroundColor: Colors.red);
      return;
    }
    isUploading.value = true;
    print('saving news');
    String? linkUrl = await _uploadFile();
    print('eee:${linkUrl?.toString()}');
    //upload it to firebase database
    await initializeDateFormatting('id_ID', null);
    if (linkUrl != null) {
      final newsData = {
        'title': title,
        'description': description,
        'imageUrl': linkUrl.toString(),
        'createdAt': DateFormat('EEEE, d MMM yyyy', Intl.defaultLocale)
            .format(DateTime.now()),
      };

      await FirebaseFirestore.instance.collection('news').add(newsData);
      Get.snackbar('Informasi', 'Berita berhasil disimpan',
          backgroundColor: CustomColors.FOREST_GREEN);
      isUploading.value = false;
      Get.offAndToNamed(Routes.BERITA_ADMIN);
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

  void updateNews(
      NewsModelFirestore item, String title, String description) async {
    if (title.isEmpty || description.isEmpty || file == null) {
      Get.snackbar('Error', 'Judul, Deskripsi dan Gambar tidak boleh kosong',
          backgroundColor: Colors.red);
      return;
    }

    isUploading.value = true;
    try {
      print('updating news');
      //deleting image in storage
      final Uri uri = Uri.parse(item.imageUrl);
      final path = uri.pathSegments.skip(4).join('/');
      print('path storage = ${path.toString()}\n${uri.toString()}');
      await FirebaseStorage.instance.ref().child(path).delete();
      print('image deleted');
      //upload new image
      String? linkUrl = await _uploadFile();
      //upload it to firebase database
      await initializeDateFormatting('id_ID', null);
      if (linkUrl != null) {
        final newsData = {
          'title': title,
          'description': description,
          'imageUrl': linkUrl.toString(),
          'createdAt': DateFormat('EEEE, d MMM yyyy', Intl.defaultLocale)
              .format(DateTime.now()),
        };

        await FirebaseFirestore.instance
            .collection('news')
            .doc(item.id)
            .update(newsData);
        Get.snackbar('Informasi', 'Berita berhasil diperbarui',
            backgroundColor: CustomColors.FOREST_GREEN);
        isUploading.value = false;
        Get.offAndToNamed(Routes.BERITA_ADMIN);
      } else {
        Get.snackbar('Error', 'Gagal mengunggah gambar',
            backgroundColor: Colors.red);
      }
    } catch (e) {
      print('Error : ${e.toString()}');
    }
  }
}
