import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:padem_arsip_digital/app/routes/app_pages.dart';

import '../../../../core/colors/Colors_Value.dart';
import '../../../../core/styles/Text_Styles.dart';
import '../../../../core/views/error_screen.dart';
import '../../../../core/widgets/CustomButtons.dart';
import '../../../../core/widgets/CustomDrawerAdmin.dart';
import '../../../../core/widgets/CustomTextField.dart';
import '../../../../models/product_jasa_model.dart';
import '../controllers/product_jasa_admin_controller.dart';

class ProductJasaAdminView extends GetView<ProductJasaAdminController> {
  const ProductJasaAdminView({super.key});
  @override
  Widget build(BuildContext context) {
    if (FirebaseAuth.instance.currentUser == null) {
      return ErrorScreen('Tidak Memiliki izin!');
    }
    double width = MediaQuery.of(context).size.width;
    TextEditingController searchController = TextEditingController();

    controller.fetchAllProduct();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Get.offAndToNamed(Routes.BUAT_PRODUCT_DAN_JASA);
          },
          backgroundColor: CustomColors.OLIVE_GREEN,
          foregroundColor: Colors.white,
          child: Icon(Symbols.add),
        ),
        body: Row(
          children: [
            drawerAdmin(1),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: width,
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Produk dan Jasa',
                        style: CustomTexts.HEADING_2(),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      textFieldWithLabel(
                        controller: searchController,
                        placeholder: 'Cari Produk atau Jasa...',
                        suffixIcon: IconButton(
                          onPressed: () {
                            controller.searchProduct(searchController.text);
                          },
                          icon: Icon(Symbols.search),
                        ),
                      ),
                      const SizedBox(height: 16),
                      Obx(
                        () {
                          return controller.isFetching.value
                              ? Column(
                                  children: [
                                    CircularProgressIndicator(
                                      color: CustomColors.FOREST_GREEN,
                                    ),
                                  ],
                                )
                              : controller.productList.isEmpty
                                  ? Text(
                                      'Data Kosong',
                                      style: CustomTexts.HEADING_2(),
                                    )
                                  : Wrap(
                                      spacing: 16,
                                      runSpacing: 16,
                                      children: controller.productList
                                          .asMap()
                                          .values
                                          .map((e) => productItem(e, width))
                                          .toList(),
                                    );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget productItem(ProductJasaFirestoreModel item, double width) {
    print("product = ${item.title}");
    return InkWell(
      onTap: () {
        // Get.offAndToNamed('/detail-berita/${item.id}');
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
                  item.imageUrl.toString(),
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                '${item.title} (${item.category.name})',
                style: CustomTexts.HEADING_4(),
                textAlign: TextAlign.left,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                NumberFormat.currency(
                        locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                    .format(item.harga),
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item.contact,
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
              child: SizedBox(
                width: double.infinity,
                child: dangerButton('Hapus', () {
                  controller.deleteProduct(item.id);
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
