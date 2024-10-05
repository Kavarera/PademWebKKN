import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAdminController extends GetxController {
  // Declare the text controllers as Rx (Reactive) objects
  var gambarBerandaController = TextEditingController().obs;
  var gambarProfilController = TextEditingController().obs;
  var gambarInfografisController = TextEditingController().obs;
  var gambarBeritaController = TextEditingController().obs;
  var gambarJasaController = TextEditingController().obs;
  var sambutanController = TextEditingController().obs;

  // Save methods for handling actions
  void saveGambarBeranda() {
    // Logic to save the 'Gambar Beranda'
    print('Gambar Beranda saved: ${gambarBerandaController.value.text}');
  }

  void saveGambarCards() {
    // Logic to save the card images
    print('Gambar Profil: ${gambarProfilController.value.text}');
    print('Gambar Infografis: ${gambarInfografisController.value.text}');
    print('Gambar Berita: ${gambarBeritaController.value.text}');
    print('Gambar Jasa: ${gambarJasaController.value.text}');
  }

  void saveSambutan() {
    // Logic to save the Sambutan Kepala Dusun
    print('Sambutan saved: ${sambutanController.value.text}');
  }

  @override
  void onClose() {
    // Dispose of controllers when not needed
    gambarBerandaController.value.dispose();
    gambarProfilController.value.dispose();
    gambarInfografisController.value.dispose();
    gambarBeritaController.value.dispose();
    gambarJasaController.value.dispose();
    sambutanController.value.dispose();
    super.onClose();
  }
}
