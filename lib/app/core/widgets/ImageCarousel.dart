import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

CarouselSlider imageCarousel(List<Widget> imageSliders,
    CarouselSliderController controller, double ratio) {
  return CarouselSlider(
    items: imageSliders,
    carouselController: controller,
    options: CarouselOptions(
      autoPlay: true,
      enlargeCenterPage: false,
      aspectRatio: ratio,
      viewportFraction: 1,
      onPageChanged: (index, reason) {},
    ),
  );
}
