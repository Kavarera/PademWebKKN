import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomFooter.dart';
import 'package:padem_arsip_digital/app/core/widgets/ImageCarousel.dart';
import 'package:padem_arsip_digital/app/models/NewsModel.dart';
import 'package:padem_arsip_digital/app/modules/landing_page/controllers/landing_page_controller.dart';

import '../controllers/detail_berita_controller.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DetailBeritaView extends GetView<DetailBeritaController> {
  final String BERITAID;
  const DetailBeritaView({required this.BERITAID, super.key});
  @override
  Widget build(BuildContext context) {
    // int id = int.parse(Get.parameters['id']!);
    double width = MediaQuery.of(context).size.width;

    CarouselSliderController carouselController = CarouselSliderController();
    print('BERITAID = $BERITAID');
    controller.getNews(BERITAID);
    return Scaffold(
      // appBar: getCoreAppBar('Padem Pedia', Get.find<LandingPageController>()),
      body: SingleChildScrollView(child: Obx(() {
        if (controller.CurrentNews.value == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Column(
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
                              Get.find<LandingPageController>()
                                  .setNews(false, '');
                              Get.find<LandingPageController>().changeState(3);
                            },
                            icon: Icon(Icons.arrow_back),
                          ),
                          Expanded(
                            child: Center(
                              child: Text(
                                controller.CurrentNews.value!.title,
                                style: CustomTexts.HEADING_2(),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(
                        controller.CurrentNews.value!.createdAt,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      Text(
                        'Oleh Admin',
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(height: 32),
                      Image.network(
                        controller.CurrentNews.value!.imageUrl,
                        fit: BoxFit.cover,
                      ),
                      // imageCarousel(imageList, carouselController, 4 / 3),
                      const SizedBox(height: 32),
                      Text(
                        controller.CurrentNews.value!.description,
                        softWrap: true,
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
              CustomFooter(width),
            ],
          );
        }
      })),
    );
  }
}
