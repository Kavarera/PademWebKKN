import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomAppBar.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomCard.dart';

import '../../../core/widgets/ImageCarousel.dart';
import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/images/background ori.jpg',
      'assets/images/bg techno 2.jpeg',
      'assets/images/bg techno.jpeg'
    ];
    final List<Map<String, String>> cardMenu = [
      {
        'pic': 'assets/images/background ori.jpg',
        'menu': 'Profil Dusun',
      },
      {
        'pic': 'assets/images/bg techno 2.jpeg',
        'menu': 'Infografis',
      },
      {
        'pic': 'assets/images/bg techno.jpeg',
        'menu': 'Berita',
      },
      {
        'pic': 'assets/images/background ori.jpg',
        'menu': 'Produk dan Jasa',
      },
    ];

    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    late List<Widget> imageSlides = images
        .asMap()
        .values
        .map(
          (String item) => Container(
            margin: const EdgeInsets.all(5.0),
            child: Stack(
              children: <Widget>[
                Image.asset(
                  item,
                  fit: BoxFit.cover,
                  height: height - 64,
                  width: width,
                ),
                Container(
                  height: height - 64,
                  width: width,
                  color: Color.fromARGB(96, 255, 255, 255),
                ),
              ],
            ),
          ),
        )
        .toList();
    CarouselSliderController _controller = CarouselSliderController();
    print(width);
    return Scaffold(
      appBar: GetCoreAppBar('Padem Pedia'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  imageCarousel(imageSlides, _controller, width / height),
                  Container(
                    height: height - 64,
                    width: double.infinity,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Selamat Datang,",
                            style: CustomTexts.HEADING_1(),
                          ),
                          Text(
                            "Jelajahi Dusun Padem Bersama Kami",
                            style: CustomTexts.HEADING_2(),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Text(
                      "Menjelajahi Dusun",
                      style: CustomTexts.HEADING_3(),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Melalui website ini Anda dapat menjelajahi segala hal yang terkait dengan Dusun. Aspek pemerintahan, penduduk, demografi, potensi Dusun, dan juga berita tentang Dusun.",
                    ),
                    const SizedBox(height: 32),
                    CustomCard(cardMenu, width),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
