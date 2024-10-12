import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';

import '../controllers/infografis_controller.dart';

class InfografisView extends GetView<InfografisController> {
  const InfografisView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Center(
                child: Text(
                  "Infografis Dusun Padem",
                  style: CustomTexts.HEADING_2(),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 16),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < 800) {
                    return DropdownButtonHideUnderline(
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: CustomColors.LIGHT_OCEAN_BLUE,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: DropdownButton<String>(
                          iconEnabledColor: Colors.white,
                          items: <String>[
                            'Sejarah',
                            'Penduduk',
                            'Destinasi Wisata'
                          ].map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? value) {
                            controller.changeState(value!);
                          },
                          hint: Obx(
                            () => Text(
                              controller.STATE.value,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          dropdownColor: CustomColors.LIGHT_OCEAN_BLUE,
                        ),
                      ),
                    );
                  } else {
                    return Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 2),
                      decoration: BoxDecoration(
                        color: CustomColors.LIGHT_OCEAN_BLUE,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            onPressed: () {
                              controller.changeState("Sejarah");
                            },
                            child: Text(
                              "Sejarah",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              controller.changeState("Penduduk");
                            },
                            child: Text(
                              "Penduduk",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              controller.changeState("Destinasi Wisata");
                            },
                            child: Text(
                              "Destinasi Wisata",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
              SizedBox(height: 16),
              Obx(() => controller.getCurrentState(context)),
            ],
          ),
        ),
      ),
    );
  }
}
