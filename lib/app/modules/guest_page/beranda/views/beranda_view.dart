import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/widgets/CustomCard.dart';
import '../../../../core/widgets/CustomFooter.dart';
import '../../../../core/widgets/ImageCarousel.dart';
import '../controllers/beranda_controller.dart';

class BerandaView extends GetView<BerandaController> {
  const BerandaView({super.key});
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
            height: height - 56,
            child: Stack(
              children: <Widget>[
                Image.asset(
                  item,
                  fit: BoxFit.cover,
                  height: height - 56,
                  width: width,
                ),
                Container(
                  height: height - 56,
                  width: width,
                  color: Color.fromARGB(96, 255, 255, 255),
                ),
              ],
            ),
          ),
        )
        .toList();

    CarouselSliderController _controller = CarouselSliderController();

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  imageCarousel(
                      imageSlides, _controller, width / (height - 56)),
                  Container(
                    height: height - 56,
                    width: double.infinity,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Selamat Datang",
                            style: CustomTexts.HEADING_1(),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Jelajahi Dusun Padem Bersama Kami",
                            style: CustomTexts.HEADING_2(),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "Sumber informasi terkini tentang pemerintahan di Dusun Padem",
                            style: CustomTexts.HEADING_4(),
                            textAlign: TextAlign.center,
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Menjelajahi Dusun",
                      style: CustomTexts.HEADING_3(),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Melalui website ini Anda dapat menjelajahi segala hal yang terkait dengan Dusun Padem dari mulai aspek pemerintahan, penduduk, demografi, potensi, sampai berita.",
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 32),
                    CustomCard(cardMenu, width),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Sambutan Kepala Dusun",
                            style: CustomTexts.HEADING_3(),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                    // const SizedBox(width: 8),
                    Expanded(
                      flex: 2,
                      child: CircleAvatar(
                        radius: 56,
                        backgroundImage:
                            AssetImage('assets/images/background ori.jpg'),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              CustomFooter
            ],
          ),
        ),
      ),
    );
  }
}
