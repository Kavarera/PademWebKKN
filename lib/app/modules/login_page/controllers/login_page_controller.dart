import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/routes/app_pages.dart';
import 'package:padem_arsip_digital/app/services/auth_firebase.dart';

class LoginPageController extends GetxController {
  AuthService _authService = AuthService();
  var isLoading = false.obs;
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

  void changeState(int index) {}

  void login(String email, String password) async {
    isLoading.value = !isLoading.value;
    try {
      User? a = await _authService.signInWithEmailAndPassword(email, password);
      print(a?.email);
      isLoading.value = !isLoading.value;
      Get.toNamed(Routes.HOME_ADMIN);
    } catch (e) {
      print(e.toString());
      isLoading.value = !isLoading.value;
    }
  }
}
