import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../core/widgets/CustomFooter.dart';
import '../../detailbelanja_page/controllers/detailbelanja_page_controller.dart';

// Halaman BelanjaPageView
class BelanjaPageView extends StatefulWidget {
  @override
  _BelanjaPageViewState createState() => _BelanjaPageViewState();
}

class _BelanjaPageViewState extends State<BelanjaPageView> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this); // Inisialisasi TabController
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: CustomAppBar(), // Menggunakan CustomAppBar
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian pengenalan
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Layanan yang disediakan promosi produk UMKM Dusun sehingga mampu meningkatkan perekonomian masyarakat Dusun',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),


            // TabBarView dengan konten tab
            SizedBox(
              height: height * 0.6, // Sesuaikan tinggi
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildTabContent(
                    'HOMESTAY',
                    'assets/homestay_icon.png',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                  ),
                  _buildTabContent(
                    'CULINARY',
                    'assets/culinary_icon.png',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                  ),
                  _buildTabContent(
                    'TOURIST GUIDE',
                    'assets/tourist_guide_icon.png',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                  ),
                  _buildTabContent(
                    'RETAIL SHOP',
                    'assets/retail_shop_icon.png',
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit...',
                  ),
                ],
              ),
            ),

            // Footer Section
            CustomFooter(width),
          ],
        ),
      ),
    );
  }

  // Widget untuk konten tab
  Widget _buildTabContent(String title, String iconPath, String description) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(iconPath, width: 50, height: 50), // Ikon gambar
              SizedBox(width: 16),
              Expanded(
                child: Text(
                  description,
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigasi ke halaman DetailbelanjaPageView saat tombol CARI ditekan
                Get.to(() => DetailbelanjaPageView());
              },
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green[700]),
              child: Text('CARI'),
            ),
          ),
        ],
      ),
    );
  }
}

// CustomAppBar kosong (sesuai dengan script Anda)
CustomAppBar() {
  return AppBar(
    title: const Text('Belanja Page'),
    backgroundColor: Colors.green,
  );
}

// Halaman DetailbelanjaPageView
class DetailbelanjaPageView extends GetView<DetailbelanjaPageController> {
  const DetailbelanjaPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailbelanjaPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailbelanjaPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
