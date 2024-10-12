import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/modules/landing_page/controllers/landing_page_controller.dart';

Widget CustomCard(List<Map<String, dynamic>> items, double width) {
  double cardWidth, ratio;
  if (width < 500) {
    cardWidth = width - 32;
    ratio = 16 / 9;
  } else if (width < 720) {
    cardWidth = (width - 48) / 2;
    ratio = 1;
  } else {
    cardWidth = (width - 80) / 4;
    ratio = 3 / 4;
  }
  return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: items
          .asMap()
          .values
          .map(
            (item) => InkWell(
              onTap: () {
                Get.find<LandingPageController>().changeState(item['state']);
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Stack(
                  children: [
                    Container(
                      // Wrap with Container
                      width: cardWidth, // Set the width explicitly
                      child: AspectRatio(
                        aspectRatio: ratio,
                        child: Image.asset(
                          item['pic']!,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0.0,
                      left: 0.0,
                      right: 0.0,
                      child: Container(
                        width: cardWidth,
                        height: 86,
                        padding: EdgeInsets.fromLTRB(16, 42, 16, 16),
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
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              item['menu']!,
                              style: CustomTexts.CARD(color: Colors.white),
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
          .toList());
}
