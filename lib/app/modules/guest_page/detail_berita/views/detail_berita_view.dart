import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomFooter.dart';
import 'package:padem_arsip_digital/app/core/widgets/ImageCarousel.dart';
import 'package:padem_arsip_digital/app/models/NewsModel.dart';
import 'package:padem_arsip_digital/app/modules/landing_page/controllers/landing_page_controller.dart';

import '../controllers/detail_berita_controller.dart';

class DetailBeritaView extends GetView<DetailBeritaController> {
  final int BERITAID;
  const DetailBeritaView({required this.BERITAID, super.key});
  @override
  Widget build(BuildContext context) {
    // int id = int.parse(Get.parameters['id']!);
    double width = MediaQuery.of(context).size.width;

    List<Widget> imageList =
        newsList[BERITAID].imageLink.asMap().values.map((item) {
      return AspectRatio(
        aspectRatio: 4 / 3,
        child: Image.network(
          item,
          fit: BoxFit.cover,
        ),
      );
    }).toList();
    CarouselSliderController carouselController = CarouselSliderController();
    return Scaffold(
      // appBar: getCoreAppBar('Padem Pedia', Get.find<LandingPageController>()),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                constraints: BoxConstraints(
                  maxWidth: 800,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Get.find<LandingPageController>().setNews(false, 0);
                            Get.find<LandingPageController>().changeState(3);
                          },
                          icon: Icon(Icons.arrow_back),
                        ),
                        Expanded(
                          child: Center(
                            child: Text(
                              newsList[BERITAID].title,
                              style: CustomTexts.HEADING_2(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      newsList[BERITAID].datetime,
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    Text(
                      'Oleh ${newsList[BERITAID].author}',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 32),
                    imageCarousel(imageList, carouselController, 4 / 3),
                    const SizedBox(height: 32),
                    Text(
                      newsList[BERITAID].content,
                      softWrap: true,
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ),
            CustomFooter(width),
          ],
        ),
      ),
    );
  }
}
