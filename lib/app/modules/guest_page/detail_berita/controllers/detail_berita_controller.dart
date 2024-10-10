import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/models/news_model.dart';

class DetailBeritaController extends GetxController {
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

  var CurrentNews = Rx<NewsModelFirestore?>(null);

  void getNews(String beritaid) async {
    try {
      var document = await FirebaseFirestore.instance
          .collection('news')
          .doc(beritaid)
          .get();
      if (document.exists) {
        CurrentNews.value = NewsModelFirestore.fromDocument(document);
      } else {
        // Handle the case where the document does not exist
        print('Document does not exist');
      }
    } catch (e) {
      // Handle any errors that occur during the fetch
      print('Error fetching news: $e');
    }
  }
}
