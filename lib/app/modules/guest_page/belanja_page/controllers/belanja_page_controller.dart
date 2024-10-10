import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/enums/product_dan_jasa_enum.dart';

import '../../../../models/product_jasa_model.dart';

class BelanjaPageController extends GetxController {
  var isFetching = false.obs;
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

  var visibleProductList = <ProductJasaFirestoreModel>[].obs;
  List<ProductJasaFirestoreModel> _productList = [];
  Future<void> fetchAllProduct() async {
    try {
      isFetching.value = true;
      Future.delayed(Duration(seconds: 2));
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('store').get();
      _productList = querySnapshot.docs
          .map((doc) => ProductJasaFirestoreModel.fromFirestore(doc))
          .toList();
      _productList.forEach((element) {
        print("After fetch = ${element.title}");
      });
      isFetching.value = false;
      visibleProductList.value = _productList;
    } catch (e) {
      print("Error fetching store: $e");
      isFetching.value = false;
    }
  }

  void filterProduct(ProductJasaEnum category) {
    if (category == ProductJasaEnum.HOMESTAY) {
      visibleProductList.value = _productList
          .where((element) => element.category == ProductJasaEnum.HOMESTAY)
          .toList();
    } else if (category == ProductJasaEnum.CULINARY) {
      visibleProductList.value = _productList
          .where((element) => element.category == ProductJasaEnum.CULINARY)
          .toList();
    } else if (category == ProductJasaEnum.TOURGUIDE) {
      visibleProductList.value = _productList
          .where((element) => element.category == ProductJasaEnum.TOURGUIDE)
          .toList();
    } else if (category == ProductJasaEnum.RETAILSTORE) {
      visibleProductList.value = _productList
          .where((element) => element.category == ProductJasaEnum.RETAILSTORE)
          .toList();
    } else {
      visibleProductList.value = _productList;
    }
  }
}
