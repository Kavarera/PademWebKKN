import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';

import '../../../../../core/styles/Text_Styles.dart';
import '../../../../../data/infografis_data.dart';

Widget PendudukWidgetState(BuildContext context) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
          height: 20,
        ),
        if (MediaQuery.of(context).size.width < 600)
          Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                          style: CustomTexts.HEADING_3(),
                        ),
                        Text('677'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                          style: CustomTexts.HEADING_3(),
                        ),
                        Text('196'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                          style: CustomTexts.HEADING_3(),
                        ),
                        Text('353'),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
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
                          style: CustomTexts.HEADING_3(),
                        ),
                        Text('324'),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        if (MediaQuery.of(context).size.width >= 600)
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                            style: CustomTexts.HEADING_3(),
                          ),
                          Text('677'),
                        ],
                      ),
                    ],
                  ),
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
                            style: CustomTexts.HEADING_3(),
                          ),
                          Text('196'),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
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
                            style: CustomTexts.HEADING_3(),
                          ),
                          Text('353'),
                        ],
                      ),
                    ],
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
                            style: CustomTexts.HEADING_3(),
                          ),
                          Text('324'),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        //CHART SECTION
        SizedBox(
          height: 50,
        ),
        AspectRatio(
          aspectRatio: MediaQuery.of(context).size.width < 1000 ? 1.5 : 4.5,
          child: AspectRatio(
            aspectRatio: 1,
            child: PieChart(
              PieChartData(
                centerSpaceRadius: 80,
                sections: [
                  PieChartSectionData(
                    value: 130, //TK
                    showTitle: false,
                    color: Colors.redAccent,
                  ),
                  PieChartSectionData(
                    value: 204, // SD
                    showTitle: false,
                    color: Colors.purple,
                  ),
                  PieChartSectionData(
                    value: 143, // SMP
                    showTitle: false,
                    color: Colors.blue,
                  ),
                  PieChartSectionData(
                    value: 86, //SMA
                    showTitle: false,
                    color: Colors.green,
                  ),
                  PieChartSectionData(
                    value: 13, // S1
                    showTitle: false,
                    color: CustomColors.LIGHT_OCEAN_BLUE,
                  ),
                  PieChartSectionData(
                    value: 1, //S2
                    showTitle: false,
                    color: Colors.orange,
                  ),
                  PieChartSectionData(
                    value: 25, // Tidak lulus sekolah
                    showTitle: false,
                    color: CustomColors.BRONZE,
                  ),
                  PieChartSectionData(
                    value: 126, // Tidak Sekolah
                    showTitle: false,
                    color: CustomColors.DARK_BROWN,
                  ),
                ],
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  color: Colors.redAccent,
                  width: 30,
                  height: 30,
                ),
                Text(
                  'TK',
                  style: CustomTexts.HEADING_4(),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.purple,
                  width: 30,
                  height: 30,
                ),
                Text(
                  'SD',
                  style: CustomTexts.HEADING_4(),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.blue,
                  width: 30,
                  height: 30,
                ),
                Text(
                  'SMP',
                  style: CustomTexts.HEADING_4(),
                )
              ],
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Container(
                  color: Colors.green,
                  width: 30,
                  height: 30,
                ),
                Text(
                  'SMA',
                  style: CustomTexts.HEADING_4(),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color: CustomColors.LIGHT_OCEAN_BLUE,
                  width: 30,
                  height: 30,
                ),
                Text(
                  'S1',
                  style: CustomTexts.HEADING_4(),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  color: Colors.orange,
                  width: 30,
                  height: 30,
                ),
                Text(
                  'S2',
                  style: CustomTexts.HEADING_4(),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              color: CustomColors.BRONZE,
              width: 30,
              height: 30,
            ),
            Text(
              'Tidak Lulus Sekolah',
              style: CustomTexts.HEADING_4(),
            )
          ],
        ),
        Center(
          child: Row(
            children: [
              Container(
                color: CustomColors.DARK_BROWN,
                width: 30,
                height: 30,
              ),
              Text(
                'Tidak Sekolah',
                style: CustomTexts.HEADING_4(),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text('Pekerjaan', style: CustomTexts.HEADING_3()),
        SizedBox(
          height: 5,
        ),
        Container(
          height: 500,
          child: ListView.builder(
            itemCount: DATA_PEKERJAAN_PADEM.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      DATA_PEKERJAAN_PADEM[index]['name'],
                      style: CustomTexts.HEADING_4(),
                    ),
                    Text(
                      DATA_PEKERJAAN_PADEM[index]['jumlah'].toString(),
                      style: CustomTexts.HEADING_4(),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
