import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomFooter.dart';

import '../../../../core/styles/Text_Styles.dart';
import '../../../../data/profile_dusun_data.dart';
import '../controllers/profile_dusun_controller.dart';
import 'dart:ui_web' as ui;
import 'dart:html';

class ProfileDusunView extends GetView<ProfileDusunController> {
  const ProfileDusunView({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    final IFrameElement iFrameElement = IFrameElement()
      ..width = '100%' // Lebar iframe
      ..height = '400' // Tinggi iframe
      ..src =
          'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3955.610110781734!2d110.33527551161483!3d-8.180240784149937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e7ba44432cc234d%3A0xc14452bfaaf48fd8!2sPadem%2C%20Girikarto%2C%20Panggang%2C%20Gunung%20Kidul%2C%20Daerah%20Istimewa%20Yogyakarta!5e0!3m2!1sid!2sid!4v1669280394805!5m2!1sid!2sid'
      ..style.border = 'none' // Hilangkan border
      ..allowFullscreen = true // Mengizinkan full screen.
      ..referrerPolicy = 'no-referrer-when-downgrade';

    // Daftarkan factory view untuk iframe
    ui.platformViewRegistry.registerViewFactory(
      'google-maps',
      (int viewId) => iFrameElement,
    );

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Profile Section (Logo + Visi Misi)
                  Text(
                    'Profil Dusun',
                    style: CustomTexts.HEADING_2(),
                    textAlign: TextAlign.center,
                  ),
                  Wrap(
                    alignment: WrapAlignment.center,
                    spacing: 16,
                    runSpacing: 16,
                    children: [
                      Image.network(
                        'https://firebasestorage.googleapis.com/v0/b/padem-535a1.appspot.com/o/assets%2Flogo_padem.png?alt=media&token=cc72d613-c78a-442b-b82a-9c9b92490a72',
                        width: 360,
                      ),
                      Container(
                        width: width < 600 ? width : null,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(
                              child: Text(
                                'VISI',
                                style: CustomTexts.HEADING_3(),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Text(
                              PADEM_VISI,
                              softWrap: true,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 8),
                            Text(
                              'MISI',
                              style: CustomTexts.HEADING_3(),
                              textAlign: TextAlign.center,
                            ),
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:
                                    PADEM_MISI.asMap().entries.map((misi) {
                                  return Text(
                                    '${misi.key + 1}. ${misi.value}',
                                    textAlign: TextAlign.center,
                                    softWrap: true,
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 32),
                  Text(
                    'ASAL USUL',
                    style: CustomTexts.HEADING_3(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Tidak diketahui secara pasti tahun berdirinya Padukuhan Padem. Menurut sesepuh setempat, Padukuhan Padem didirikan oleh seorang bernama Mbah Tijoyo. Mbah Tijoyo merupakan pendatang yang berasal dari Wonosari, Gunung Kidul. Beliau dan beberapa kawannya sepakat untuk mendirikan Padukuhan Padem bersama. Nama Padem sendiri konon diberikan oleh Sunan Kalijaga yang kebetulan melewati padukuhan ini. Nama “Padem” berasal dari kata “Adem” (Dingin), karena ketika Sunan Kalijaga melewati dukuh tersebut hawa di sekitar Padukuhan Padem terasa adem atau dingin.',
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 32),

                  // Bagian Dusun
                  Text(
                    'BAGAN DUSUN',
                    style: CustomTexts.HEADING_3(),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Struktur Pemerintahan Dusun Padem',
                    style: CustomTexts.HEADING_4(),
                    textAlign: TextAlign.center,
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
                              backgroundImage: AssetImage(
                                  'assets/images/pak dukuh.jpg'), // Gambar Kepala Dusun dari URL
                            ),
                            SizedBox(height: 8),
                            Text('Pak Dukuh Sugiato'),
                          ],
                        ),
                        const SizedBox(height: 16),
                        Column(
                          children: const [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                  'assets/images/pak rw.jpg'), // Gambar Kepala Dusun dari URL
                            ),
                            SizedBox(height: 8),
                            Text('Pak RW Sukidi'),
                          ],
                        ),
                        const SizedBox(height: 16),
                        // Deretan RT di bawah Dukuh
                        Wrap(
                          spacing: 20.0, // Jarak horizontal antar item
                          runSpacing: 20.0, // Jarak vertikal antar item
                          alignment: WrapAlignment.center,
                          children: List.generate(7, (index) {
                            return Container(
                              width: 80,
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    radius: 35,
                                    backgroundImage: AssetImage(
                                        'assets/images/pak rt ${index + 1}.jpg'), // Gambar RT dari URL
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Pak RT ${index + 1} ${Get.find<ProfileDusunController>().namaRT[index]}',
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
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
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Container(
                    height: 200,
                    color: Colors.grey[300], // Placeholder for map
                    child: const Center(
                        child: HtmlElementView(viewType: 'google-maps')),
                  ),

                  // Asal Usul Section

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
