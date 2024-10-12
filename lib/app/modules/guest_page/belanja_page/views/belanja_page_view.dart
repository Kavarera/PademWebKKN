import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/models/product_jasa_model.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/belanja_page/controllers/belanja_page_controller.dart';
import '../../../../core/views/error_screen.dart';
import '../../../../core/widgets/CustomFooter.dart';

class BelanjaPageView extends GetView<BelanjaPageController> {
  const BelanjaPageView({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 400) {
      return ErrorScreen(
          "Resolusi lebar layar anda dibawah 500\nMohon ubah resolusi layar dengan mengaktifkan fitur desktop.");
    }
    controller.fetchAllProduct();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Produk dan Jasa",
                    style: CustomTexts.HEADING_2(),
                  ),
                ),
                const SizedBox(height: 16),
                //Tab Button Section
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
                          child: DropdownButton<Map<String, dynamic>>(
                            iconEnabledColor: Colors.white,
                            items: controller.menuList.map((item) {
                              return DropdownMenuItem<Map<String, dynamic>>(
                                value: item,
                                child: Text(
                                  item['title'],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (Map<String, dynamic>? selectedItem) {
                              if (selectedItem != null) {
                                controller.changeState(selectedItem['title']);
                                controller.filterProduct(selectedItem['enum']);
                              }
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
                            children: controller.menuList.map((item) {
                              return TextButton(
                                onPressed: () {
                                  controller.changeState(item['title']);
                                  controller.filterProduct(item['enum']);
                                },
                                child: Text(
                                  item['title'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              );
                            }).toList()),
                      );
                    }
                  },
                ),

                // SizedBox(
                //   height: 16,
                // ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(() {
                    if (!controller.isFetching.value &&
                        controller.visibleProductList.isEmpty) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 100, horizontal: 16),
                        child: Center(
                          child: Text('Tidak Ada Produk',
                              style: CustomTexts.HEADING_2()),
                        ),
                      );
                    } else if (controller.isFetching.value) {
                      return Center(
                        child: Padding(
                          padding: EdgeInsets.all(100),
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Wrap(
                                spacing: 16,
                                runSpacing: 16,
                                children: controller.visibleProductList
                                    .asMap()
                                    .values
                                    .map((item) {
                                  return Column(children: [
                                    const SizedBox(height: 16),
                                    ProductCard(item, width),
                                  ]);
                                }).toList()),
                            const SizedBox(height: 16)
                          ],
                        ),
                      );
                    }
                  }),
                  const SizedBox(height: 16),
                  CustomFooter(width),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ProductCard(ProductJasaFirestoreModel product, double width) {
    return Container(
      width: width < 600
          ? width
          : width < 1200
              ? (width - 48) / 2
              : (width - 64) / 3,
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
                product.imageUrl.toString(),
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              product.title,
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
                  .format(product.harga),
              style: CustomTexts.HEADING_5(color: CustomColors.FOREST_GREEN),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: SizedBox(
              height: 42,
              child: Text(
                product.content,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 14),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Icon(
                  Symbols.call,
                  size: 24,
                ),
                const SizedBox(width: 8),
                Text(product.contact)
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
