import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomAppBar.dart';

import '../controllers/landing_page_controller.dart';

class LandingPageView extends GetView<LandingPageController> {
  const LandingPageView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GetCoreAppBar('Padem Pedia', controller.NavState()),
      body: const Center(
        child: Text(
          'LandingPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
