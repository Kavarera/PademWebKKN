import 'package:get/get.dart';

class ProfileDusunController extends GetxController {
  final count = 0.obs;
  final List<String> namaRT = [
    "Mugiyono",
    "Sajiyo",
    "Wasono",
    "Mudiyanto",
    "Harjono",
    "Heriyanto",
    "Sudiasri",
  ];
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

  void increment() => count.value++;
}
