import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/models/product_jasa_model.dart';

class ProductJasaAdminController extends GetxController {
  var isFetching = false.obs;
  var isSearching = false.obs;
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

  var productList = <ProductJasaFirestoreModel>[].obs;

  Future<void> fetchAllProduct() async {
    try {
      isFetching.value = true;
      Future.delayed(Duration(seconds: 2));
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('store').get();
      productList.value = querySnapshot.docs
          .map((doc) => ProductJasaFirestoreModel.fromFirestore(doc))
          .toList();
      productList.forEach((element) {
        print("After fetch = ${element.title}");
      });
      isFetching.value = false;
    } catch (e) {
      print("Error fetching store: $e");
      isFetching.value = false;
    }
  }

  void deleteProduct(String id) async {
    try {
      isFetching.value = true;
      await FirebaseFirestore.instance.collection('store').doc(id).delete();
      productList.removeWhere((element) => element.id == id);
      isFetching.value = false;
    } catch (e) {
      print("Error deleting store: $e");
    }
  }

  void searchProduct(String text) {
    if (text.isEmpty) {
      fetchAllProduct();
    } else {
      productList.value = productList
          .where((element) =>
              element.title.toLowerCase().contains(text.toLowerCase()))
          .toList();
    }
  }
}
