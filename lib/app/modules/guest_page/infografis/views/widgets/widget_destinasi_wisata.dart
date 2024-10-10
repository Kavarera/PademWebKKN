import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/data/infografis_data.dart';

class DestinasiWisataWidgetState extends StatelessWidget {
  DestinasiWisataWidgetState({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (build, constraints) {
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
          height: 800,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return _itemImageCarousel(PADEM_WISATA_IMAGES[index]);
            },
          ),
        );
      }
    });
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
      child: Stack(
        children: [
          Image.asset(
            image['pic']!,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  CustomColors.ORANGE,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 50,
            child: Text(
              image['name']!,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
