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

  List<NewsModelFirestore> newsList = [];

  Future<void> fetchAllNews() async {
    try {
      isFetching.value = true;
      Future.delayed(Duration(seconds: 2));
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('news').get();
      newsList = querySnapshot.docs
          .map((doc) => NewsModelFirestore.fromDocument(doc))
          .toList();
      newsList.forEach((element) {
        print(element.title);
        print(element.imageUrl);
      });
      isFetching.value = false;
    } catch (e) {
      print("Error fetching news: $e");
      isFetching.value = false;
    }
  }
}
