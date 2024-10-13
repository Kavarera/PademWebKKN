import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';

import '../../../../../core/styles/Text_Styles.dart';
import '../../../../../core/widgets/CustomFooter.dart';
import '../../../../../data/infografis_data.dart';
import '../../controllers/infografis_controller.dart';

Widget PendudukWidgetState(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'Penduduk',
                  style: CustomTexts.HEADING_3(),
                  textAlign: TextAlign.justify,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              if (MediaQuery.of(context).size.width < 600)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/population.png',
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Jiwa',
                              style: CustomTexts.HEADING_4(),
                            ),
                            Text('677'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/user.png',
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kepala Keluarga',
                              style: CustomTexts.HEADING_4(),
                            ),
                            Text('196'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/female.png',
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Perempuan',
                              style: CustomTexts.HEADING_4(),
                            ),
                            Text('353'),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/images/male.png',
                          width: 50,
                          fit: BoxFit.contain,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Laki-Laki',
                              style: CustomTexts.HEADING_4(),
                            ),
                            Text('324'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              if (MediaQuery.of(context).size.width >= 600)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/population.png',
                                width: 50,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Jiwa',
                                    style: CustomTexts.HEADING_4(),
                                  ),
                                  Text('677'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/user.png',
                                width: 50,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kepala Keluarga',
                                    style: CustomTexts.HEADING_4(),
                                  ),
                                  Text('196'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/female.png',
                                width: 50,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Perempuan',
                                    style: CustomTexts.HEADING_4(),
                                  ),
                                  Text('353'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                'assets/images/male.png',
                                width: 50,
                                fit: BoxFit.contain,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Laki-Laki',
                                    style: CustomTexts.HEADING_4(),
                                  ),
                                  Text('324'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              //CHART SECTION
              SizedBox(height: 32),
              AspectRatio(
                aspectRatio:
                    MediaQuery.of(context).size.width < 1000 ? 1.5 : 4.5,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: PieChart(
                    PieChartData(
                      centerSpaceRadius: 80,
                      sections: [
                        PieChartSectionData(
                          value: 130, //TK
                          showTitle: true,
                          color: Colors.redAccent,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PieChartSectionData(
                          value: 204, // SD
                          showTitle: true,
                          color: Colors.purple,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PieChartSectionData(
                          value: 143, // SMP
                          showTitle: true,
                          color: Colors.blue,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PieChartSectionData(
                          value: 86, //SMA
                          showTitle: true,
                          color: Colors.green,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PieChartSectionData(
                          value: 13, // S1
                          showTitle: true,
                          color: CustomColors.LIGHT_OCEAN_BLUE,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PieChartSectionData(
                          value: 1, //S2
                          showTitle: true,
                          color: Colors.orange,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PieChartSectionData(
                          value: 25, // Tidak lulus sekolah
                          showTitle: true,
                          color: CustomColors.BRONZE,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        PieChartSectionData(
                          value: 126, // Tidak Sekolah
                          showTitle: true,
                          color: CustomColors.DARK_BROWN,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.redAccent,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'TK',
                          style: CustomTexts.HEADING_4(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.purple,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'SD',
                          style: CustomTexts.HEADING_4(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.blue,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'SMP',
                          style: CustomTexts.HEADING_4(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.green,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'SMA',
                          style: CustomTexts.HEADING_4(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: CustomColors.LIGHT_OCEAN_BLUE,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'S1',
                          style: CustomTexts.HEADING_4(),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: Colors.orange,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'S2',
                          style: CustomTexts.HEADING_4(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Container(
                          color: CustomColors.BRONZE,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Expanded(
                          child: Text(
                            'Tidak Lulus Sekolah',
                            style: CustomTexts.HEADING_4(),
                            softWrap: true,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Container(
                          color: CustomColors.DARK_BROWN,
                          width: 30,
                          height: 30,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          'Tidak Sekolah',
                          style: CustomTexts.HEADING_4(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Text('Pekerjaan', style: CustomTexts.HEADING_3()),
              SizedBox(
                height: 5,
              ),
              ...DATA_PEKERJAAN_PADEM.asMap().values.map((pekerjaan) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        pekerjaan['name'],
                        style: CustomTexts.HEADING_4(),
                      ),
                      Text(
                        pekerjaan['jumlah'].toString(),
                        style: CustomTexts.HEADING_4(),
                      ),
                    ],
                  ),
                );
              })
            ],
          ),
        ),
      ),
      const SizedBox(height: 16),
      Obx(() => CustomFooter(Get.find<InfografisController>().WIDTH.value))
    ],
  );
}
