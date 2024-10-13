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
      'assets/images/background.JPG',
      'assets/images/gamelan.JPG',
      'assets/images/pasar_legi.JPG'
    ];
    final List<Map<String, dynamic>> cardMenu = [
      {
        'pic': 'assets/images/gapura.JPG',
        'menu': 'Profil Dusun',
        'state': 1,
      },
      {
        'pic': 'assets/images/banner_balai.JPG',
        'menu': 'Infografis',
        'state': 2,
      },
      {
        'pic': 'assets/images/gamelan.JPG',
        'menu': 'Berita',
        'state': 3,
      },
      {
        'pic': 'assets/images/pasar_legi.JPG',
        'menu': 'Produk dan Jasa',
        'state': 4
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
                  color: Color.fromARGB(120, 0, 0, 0),
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
                            style: CustomTexts.HEADING_1(
                                color: Colors.white, shadow: true),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Jelajahi Dusun Padem Bersama Kami",
                            style: CustomTexts.HEADING_3(
                                color: Colors.white, shadow: true),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            "Sumber informasi terkini tentang pemerintahan di Dusun Padem",
                            style: CustomTexts.HEADING_4(
                                color: Colors.white, shadow: true),
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
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: sambutanKepalaDesa(width),
              ),
              const SizedBox(height: 32),
              CustomFooter(width)
            ],
          ),
        ),
      ),
    );
  }

  Widget sambutanKepalaDesa(double width) {
    if (width < 600) {
      return Column(
        children: [
          Text(
            "Sambutan Kepala Dusun",
            style: CustomTexts.HEADING_3(),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          CircleAvatar(
            radius: 64,
            backgroundImage: AssetImage('assets/images/pak dukuh.jpg'),
          ),
          const SizedBox(height: 16),
          Text(
            "Assalamualaikum Warahmatullahi Wabarakatuh,\nSalam sejahtera untuk kita semuanya.\n\n\nPuji dan syukur ke hadirat Tuhan Yang Maha Esa atas Rahmat dan Karunianya, kita masih di berikan kesehatan sehingga masih bisa bersama sama, bahu membahu, dan bergotong royong membangun Padukan Padem kita tercinta. Selanjutnya ijinkan saya mengucapkan terima kasih kepada seluruh maayarakat Padukuhan Padem, atas Amanah yang di berikan ini, selanjutnya saya mengajak seluruh warga Maayarakat untuk bersama sama bahu membahu, bergotong royong dalam melaksanakan pembangunan Padukuhan Padem saat ini dan masa yang akan datang, agar apa yang menjadi harapan seluruh warga masyarakat akan senantiasa terwujud, yakni menjadikan Padukuhan Padem yang produktif, agamis, demokratis, mandiri, dan sejahtera.\n\n\nTentu semua ini tidaklah mudah, namun dengan semangat kebersamaan kita, dengan Gotong Royong yang menjadi budaya kita, serta dengan mendapatkan dukungan dari pemerintah, serta atas ridho Alloh SWT, semua ini akan segera terwujud. Untuk itu, saya mohon masukan, saran dari bapak/ibu sekalian agar dalam menentukan kebijakan strategis dapat kita laksanakan dengan sebaik-baiknya.\n\nDemikianlah kata sambutan saya sebagi Dukuh Padem, Kalrahan Girikarto, Kapanewon Panggang, apabila ada hal yang kurang berkenan, mohon maaf yang sebesar-besarnya.\n\nWasalamualaikum Warahmatullahi Wabarakatuh.",
            textAlign: TextAlign.center,
          ),
        ],
      );
    } else {
      return Row(
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
                  "Assalamualaikum Warahmatullahi Wabarakatuh,\nSalam sejahtera untuk kita semuanya.\n\n\nPuji dan syukur ke hadirat Tuhan Yang Maha Esa atas Rahmat dan Karunianya, kita masih di berikan kesehatan sehingga masih bisa bersama sama, bahu membahu, dan bergotong royong membangun Padukan Padem kita tercinta. Selanjutnya ijinkan saya mengucapkan terima kasih kepada seluruh maayarakat Padukuhan Padem, atas Amanah yang di berikan ini, selanjutnya saya mengajak seluruh warga Maayarakat untuk bersama sama bahu membahu, bergotong royong dalam melaksanakan pembangunan Padukuhan Padem saat ini dan masa yang akan datang, agar apa yang menjadi harapan seluruh warga masyarakat akan senantiasa terwujud, yakni menjadikan Padukuhan Padem yang produktif, agamis, demokratis, mandiri, dan sejahtera.\n\n\nTentu semua ini tidaklah mudah, namun dengan semangat kebersamaan kita, dengan Gotong Royong yang menjadi budaya kita, serta dengan mendapatkan dukungan dari pemerintah, serta atas ridho Alloh SWT, semua ini akan segera terwujud. Untuk itu, saya mohon masukan, saran dari bapak/ibu sekalian agar dalam menentukan kebijakan strategis dapat kita laksanakan dengan sebaik-baiknya.\n\nDemikianlah kata sambutan saya sebagi Dukuh Padem, Kalrahan Girikarto, Kapanewon Panggang, apabila ada hal yang kurang berkenan, mohon maaf yang sebesar-besarnya.\n\nWasalamualaikum Warahmatullahi Wabarakatuh.",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: CircleAvatar(
              radius: 128,
              backgroundImage: AssetImage('assets/images/pak dukuh.jpg'),
            ),
          )
        ],
      );
    }
  }
}
