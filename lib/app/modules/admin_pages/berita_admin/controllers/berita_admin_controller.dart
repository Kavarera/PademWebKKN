import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

import '../../../../models/news_model.dart';

class BeritaAdminController extends GetxController {
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

  var newsList = <NewsModelFirestore>[].obs;

  Future<void> fetchAllNews() async {
    try {
      isFetching.value = true;
      Future.delayed(Duration(seconds: 2));
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('news').get();
      newsList.value = querySnapshot.docs
          .map((doc) => NewsModelFirestore.fromDocument(doc))
          .toList()
          .reversed
          .toList();

      newsList.forEach((element) {
        print("After fetch = ${element.imageUrl}");
      });
      isFetching.value = false;
    } catch (e) {
      print("Error fetching news: $e");
      isFetching.value = false;
    }
  }

  void deleteNews(String id) async {
    try {
      isFetching.value = true;
      await FirebaseFirestore.instance.collection('news').doc(id).delete();
      newsList.removeWhere((element) => element.id == id);
      isFetching.value = false;
    } catch (e) {
      print("Error deleting news: $e");
    }
  }

  void searchNews(String text) {
    if (text.isEmpty) {
      fetchAllNews();
    } else {
      newsList.value = newsList
          .where((element) =>
              element.title.toLowerCase().contains(text.toLowerCase()))
          .toList();
    }
  }
}
