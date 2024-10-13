import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/data/infografis_data.dart';

import '../../../../../core/widgets/CustomFooter.dart';
import '../../controllers/infografis_controller.dart';

class DestinasiWisataWidgetState extends StatelessWidget {
  DestinasiWisataWidgetState({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: LayoutBuilder(builder: (build, constraints) {
            if (constraints.maxWidth < 1000) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _itemImageCarousel(PADEM_WISATA_IMAGES[0]),
                  SizedBox(
                    height: 20,
                  ),
                  _itemImageCarousel(PADEM_WISATA_IMAGES[1]),
                  SizedBox(
                    height: 20,
                  ),
                  _itemImageCarousel(PADEM_WISATA_IMAGES[2]),
                ],
              );
            } else {
              return SizedBox(
                width: double.infinity,
                height: 700,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return _itemImageCarousel(PADEM_WISATA_IMAGES[index]);
                  },
                ),
              );
            }
          }),
        ),
        const SizedBox(height: 16),
        Obx(() => CustomFooter(Get.find<InfografisController>().WIDTH.value))
      ],
    );
  }
}

class _itemImageCarousel extends StatelessWidget {
  final Map<String, String> image;
  const _itemImageCarousel(
    this.image, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Stack(
          children: [
            Image.asset(
              image['pic']!,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 86,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 236, 204, 162),
                      Color.fromARGB(0, 114, 82, 1)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  image['name']!,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
