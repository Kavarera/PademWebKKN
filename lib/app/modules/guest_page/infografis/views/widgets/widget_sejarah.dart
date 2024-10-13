import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/styles/Text_Styles.dart';
import '../../../../../core/widgets/CustomFooter.dart';
import '../../../../../data/infografis_data.dart';
import '../../controllers/infografis_controller.dart';

Widget SejarahWidgetState() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(4, 1),
              ),
            ],
          ),
          child: Column(
            children: [
              Center(
                child: Text(
                  'Sejarah',
                  style: CustomTexts.HEADING_3(),
                  textAlign: TextAlign.justify,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                SEJARAH_PADEM,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      const SizedBox(height: 100),
      Obx(() => CustomFooter(Get.find<InfografisController>().WIDTH.value))
    ],
  );
}
