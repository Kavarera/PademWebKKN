import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../core/colors/Colors_Value.dart';
import '../controllers/profile_dusun_controller.dart';

class ProfileDusunView extends GetView<ProfileDusunController> {
  const ProfileDusunView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Profile Section (Logo + Visi Misi)
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                        child: Text('LOGO')), // Placeholder for logo
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'VISI',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('BLABARJKNJSKNKSQWJNSKQWJQWN'),
                      SizedBox(height: 8),
                      Text(
                        'MISI',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('BLABARJKNJSKNKSQWJNSKQWJQWN'),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 24),

              // Asal Usul Section
              const Text(
                'ASAL USUL',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Tidak diketahui secara pasti tahun berdirinya Padukuhan Padem. Menurut sesepuh setempat, Padukuhan Padem didirikan oleh seorang bernama Mbah Tijoyo. Mbah Tijoyo merupakan pendatang yang berasal dari Wonosari, Gunung Kidul. Beliau dan beberapa kawannya sepakat untuk mendirikan Padukuhan Padem bersama. Nama Padem sendiri konon diberikan oleh Sunan Kalijaga yang kebetulan melewati padukuhan ini. Nama “Padem” berasal dari kata “Adem” (Dingin), karena ketika Sunan Kalijaga melewati dukuh tersebut hawa di sekitar Padukuhan Padem terasa adem atau dingin.',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 24),

              // Bagian Dusun
              const Text(
                'BAGAN DUSUN',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Struktur Pemerintahan Dusun Padem',
                style: TextStyle(fontSize: 16),
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

              const SizedBox(height: 24),

              // Peta Lokasi Dusun Section
              const Text(
                'PETA LOKASI DUSUN',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Container(
                height: 200,
                color: Colors.grey[300], // Placeholder for map
                child: const Center(
                  child: Text('Map Placeholder'),
                ),
              ),

              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal:
                              16.0), // Menambahkan padding kiri dan kanan
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                        color: CustomColors.LIGHT_OCEAN_BLUE,
                      ),
                      height: 200, // Tinggi bagian bawah
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Kolom pertama (Nama Dusun dan Lokasi)
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Pusatkan konten secara vertikal
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.green, // Gambar lingkaran hijau
                                ),
                              ),
                              const SizedBox(height: 10),
                              const Text(
                                'Dusun Padem',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'Kabupaten Gunungkidul',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          // Kolom kedua (Kontak Dusun)
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Pusatkan konten secara vertikal
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Kontak Dusun',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'xxxxxx\nxxxxxx\nxxxxxx', // Kontak Dummy
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          // Kolom ketiga (Media Sosial)
                          Column(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Pusatkan konten secara vertikal
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              Text(
                                'Media Sosial',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'xxxxxx\nxxxxxx\nxxxxxx', // Media Sosial Dummy
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 25,
                      width: double.infinity,
                      color: CustomColors.OCEAN_BLUE,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
