import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomButtons.dart';
import 'package:padem_arsip_digital/app/core/widgets/CustomDrawerAdmin.dart';

import '../../../../core/colors/Colors_Value.dart';
import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/widgets/CustomAppBar.dart';
import '../../../../core/widgets/CustomTextField.dart';
import '../../../../models/NewsModel.dart';
import '../controllers/berita_admin_controller.dart';

class BeritaAdminView extends GetView<BeritaAdminController> {
  const BeritaAdminView({super.key});
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    TextEditingController searchController = TextEditingController();
    return Scaffold(
      appBar: adminAppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('/buat-berita');
        },
        backgroundColor: CustomColors.OLIVE_GREEN,
        foregroundColor: Colors.white,
        child: Icon(Symbols.add),
      ),
      body: Row(
        children: [
          drawerAdmin(3),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: width,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Berita',
                      style: CustomTexts.HEADING_2(),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 16),
                    textFieldWithLabel(
                      controller: searchController,
                      placeholder: 'Cari berita...',
                      suffixIcon: Icon(Symbols.search),
                    ),
                    const SizedBox(height: 16),
                    Wrap(
                        spacing: 16,
                        runSpacing: 16,
                        children: newsList.asMap().values.map((item) {
                          return Column(children: [
                            const SizedBox(height: 16),
                            newsItem(item, width),
                          ]);
                        }).toList())
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget newsItem(NewsModel item, double width) {
    return InkWell(
      onTap: () {
        Get.toNamed('/detail-berita/${item.id}');
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(5),
          ),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 4,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              child: AspectRatio(
                aspectRatio: 4 / 3,
                child: Image.network(
                  item.imageLink[0],
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item.title,
                style: CustomTexts.HEADING_4(),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item.datetime,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Oleh ${item.author}',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item.content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: dangerButton('Hapus', () {}),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: primaryButton('Edit', () {}),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
