import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DusunPage extends StatefulWidget {
  @override
  _DusunPageState createState() => _DusunPageState();
}

class _DusunPageState extends State<DusunPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: 4, vsync: this); // TabBar dengan 4 tab
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: const Text("Dusun Padem - Kabupaten Gunung Kidul"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Title Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Beli Dari Dusun',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Layanan yang disediakan promosi produk UMKM Dusun sehingga mampu meningkatkan perekonomian masyarakat Dusun',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
            ),

            // TabBar Section
            TabBar(
              controller: _tabController,
              indicatorColor: Colors.green[800],
              labelColor: Colors.green[800],
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(text: 'HOMESTAY'),
                Tab(text: 'CULINARY'),
                Tab(text: 'TOURIST GUIDE'),
                Tab(text: 'RETAIL SHOP'),
              ],
            ),

            // Products Section
            SizedBox(
              height: 400,
              child: TabBarView(
                controller: _tabController,
                children: [
                  _buildHomestayTab(),
                  Center(child: Text('CULINARY')),
                  Center(child: Text('TOURIST GUIDE')),
                  Center(child: Text('RETAIL SHOP')),
                ],
              ),
            ),

            // Footer Section
            _buildFooter(),
          ],
        ),
      ),
    );
  }

  // Tab Content for Homestay
  Widget _buildHomestayTab() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
        shrinkWrap: true,
        children: [
          _buildHomestayCard(
            'assets/homestay1.png', // Replace with actual image asset
            'HOMESTAY BU WRWRWR',
            'Facility:\n- Kamar mandi dalam\n- Bed\n- Garasi luas',
            'Rp xx.xxx.xxx',
            '08xxxxxxxx',
          ),
          _buildHomestayCard(
            'assets/homestay2.png', // Replace with actual image asset
            'HOMESTAY BU WRWRWR',
            'Facility:\n- Kamar mandi dalam\n- Bed\n- Garasi luas',
            'Rp xx.xxx.xxx',
            '08xxxxxxxx',
          ),
        ],
      ),
    );
  }

  // Widget for each Homestay card
  Widget _buildHomestayCard(String imagePath, String title, String facilities,
      String price, String contact) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 4),
                Text(facilities, style: TextStyle(fontSize: 14)),
                SizedBox(height: 4),
                Text("Harga: $price",
                    style: TextStyle(color: Colors.orange[800])),
                SizedBox(height: 4),
                Text("Contact: $contact",
                    style: TextStyle(color: Colors.green[700])),
                SizedBox(height: 8),
                GestureDetector(
                  onTap: () => Get.to(() =>
                      DetailbelanjaPageView()), // Navigasi ke DetailBelanjaPageView
                  child: Text(
                    'See details',
                    style: TextStyle(color: Colors.blue, fontSize: 12),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Footer Widget
  Widget _buildFooter() {
    return Container(
      color: Colors.blue[100],
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: const [
              Text(
                'Dusun Padem\nKabupaten Gunungkidul',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Kontak Dusun'),
              Text('xxxxxx'),
              Text('xxxxxx'),
              Text('xxxxxx'),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Media Sosial'),
              Text('xxxxxx'),
              Text('xxxxxx'),
              Text('xxxxxx'),
            ],
          ),
        ],
      ),
    );
  }
}

class DetailbelanjaPageView {
  const DetailbelanjaPageView();
}
