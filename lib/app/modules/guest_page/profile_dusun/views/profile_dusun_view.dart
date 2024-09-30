import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomFooter.dart';

import '../../../../core/styles/Text_Styles.dart';
import '../controllers/profile_dusun_controller.dart';

class ProfileDusunView extends GetView<ProfileDusunController> {
  const ProfileDusunView({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Section (Logo + Visi Misi)
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          shape: BoxShape.circle,
                        ),
                        child: Center(
                          child: Text(
                            'LOGO',
                            style: CustomTexts.HEADING_3(),
                          ),
                        ), // Placeholder for logo
                      ),
                      Container(
                        width: width < 600 ? width : null,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'VISI',
                              style: CustomTexts.HEADING_3(),
                            ),
                            Text(
                              'BLABARJKNJSKNKSQWJNSKQWJQWN',
                              softWrap: true,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'MISI',
                              style: CustomTexts.HEADING_3(),
                            ),
                            Text(
                              'BLABARJKNJSKNKSQWJNSKQWJQWN',
                              softWrap: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),

                  // Asal Usul Section
                  Text(
                    'ASAL USUL',
                    style: CustomTexts.HEADING_3(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tidak diketahui secara pasti tahun berdirinya Padukuhan Padem. Menurut sesepuh setempat, Padukuhan Padem didirikan oleh seorang bernama Mbah Tijoyo. Mbah Tijoyo merupakan pendatang yang berasal dari Wonosari, Gunung Kidul. Beliau dan beberapa kawannya sepakat untuk mendirikan Padukuhan Padem bersama. Nama Padem sendiri konon diberikan oleh Sunan Kalijaga yang kebetulan melewati padukuhan ini. Nama “Padem” berasal dari kata “Adem” (Dingin), karena ketika Sunan Kalijaga melewati dukuh tersebut hawa di sekitar Padukuhan Padem terasa adem atau dingin.',
                  ),

                  const SizedBox(height: 32),

                  // Bagian Dusun
                  Text(
                    'BAGAN DUSUN',
                    style: CustomTexts.HEADING_3(),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Struktur Pemerintahan Dusun Padem',
                    style: CustomTexts.HEADING_4(),
                  ),

                  // Structure Diagram
                  const SizedBox(height: 16),
                  Center(
                    child: Column(
                      children: [
                        // Kepala Dusun (Dukuh)
                        Column(
                          children: const [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://img.icons8.com/color/48/user-male-circle--v1.png'), // Gambar Kepala Dusun dari URL
                            ),
                            SizedBox(height: 8),
                            Text('Pak Dukuh XYZ'),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Deretan RT di bawah Dukuh
                        Wrap(
                          spacing: 20.0, // Jarak horizontal antar item
                          runSpacing: 20.0, // Jarak vertikal antar item
                          alignment: WrapAlignment.center,
                          children: List.generate(7, (index) {
                            return Column(
                              children: [
                                CircleAvatar(
                                  radius: 35,
                                  backgroundImage: NetworkImage(
                                      'https://img.icons8.com/color/48/user-male-circle--v1.png'), // Gambar RT dari URL
                                ),
                                const SizedBox(height: 8),
                                Text('Pak RT ${index + 1}'),
                              ],
                            );
                          }),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Peta Lokasi Dusun Section
                  Text(
                    'PETA LOKASI DUSUN',
                    style: CustomTexts.HEADING_3(),
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    color: Colors.grey[300], // Placeholder for map
                    child: const Center(
                      child: Text('Map Placeholder'),
                    ),
                  ),

                  const SizedBox(height: 32),
                ],
              ),
            ),
            CustomFooter(width)
          ],
        ),
      ),
    );
  }
}
