import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/models/news_model.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/detail_berita/views/detail_berita_view.dart';

class ListBeritaController extends GetxController {
  var currentBeritaId = ''.obs;
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

  getBeritaPage() {
    return DetailBeritaView(
      BERITAID: currentBeritaId.value,
    );
  }

  void fetchNews() async {
    try {
      isFetching.value = true;
      Future.delayed(Duration(seconds: 2));
      QuerySnapshot querySnapshot =
          await FirebaseFirestore.instance.collection('news').get();
      newsList.value = querySnapshot.docs
          .map((doc) => NewsModelFirestore.fromDocument(doc))
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
}
