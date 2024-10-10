import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/models/product_jasa_model.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/belanja_page/controllers/belanja_page_controller.dart';
import '../../../../core/enums/product_dan_jasa_enum.dart';
import '../../../../core/views/error_screen.dart';
import '../../../../core/widgets/CustomFooter.dart';

class BelanjaPageView extends GetView<BelanjaPageController> {
  const BelanjaPageView({super.key});

  @override
  Widget build(BuildContext context) {
    if (MediaQuery.of(context).size.width < 400) {
      return ErrorScreen(
          "Resolusi lebar layar anda dibawah 500\nMohon ubah resolusi layar dengan mengaktifkan fitur desktop.");
    }
    controller.fetchAllProduct();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Beli Dari Dusun",
              style: CustomTexts.HEADING_2(),
            ),
          ),
          //Tab Button Section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 2),
            decoration: BoxDecoration(
              color: CustomColors.LIGHT_OCEAN_BLUE,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    controller.filterProduct(ProductJasaEnum.HOMESTAY);
                  },
                  child: Text(
                    "Homestay",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.filterProduct(ProductJasaEnum.CULINARY);
                  },
                  child: Text(
                    "Culinary",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.filterProduct(ProductJasaEnum.TOURGUIDE);
                  },
                  child: Text(
                    "Tourist Guide",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    controller.filterProduct(ProductJasaEnum.RETAILSTORE);
                  },
                  child: Text(
                    "Retail Store",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Obx(() {
              if (controller.visibleProductList.isEmpty) {
                return Center(
                  child:
                      Text('Tidak Ada Produk', style: CustomTexts.HEADING_2()),
                );
              }
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: MediaQuery.of(context).size.width < 1000
                      ? 1
                      : MediaQuery.of(context).size.width < 1200
                          ? 2
                          : 3,
                  mainAxisSpacing: 100,
                ),
                itemBuilder: (context, index) => Container(
                  color: Colors.red,
                  child: ProductCard(controller.visibleProductList[index]),
                ),
                itemCount: controller.visibleProductList.length,
                shrinkWrap: true,
              );
            }),
          ),
          // Footer Section
          // CustomFooter(MediaQuery.of(context).size.width),
        ],
      ),
    );
  }

  Widget ProductCard(ProductJasaFirestoreModel product) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 12,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 12,
                  offset: Offset(4, 4),
                ),
              ],
            ),
            padding: const EdgeInsets.all(5), // Reduced padding
            child: Image.network(
              product.imageUrl.toString(),
              fit: BoxFit.contain,
            ),
          ),
          //Title card
          Text(
            product.title,
            style: CustomTexts.HEADING_3(),
          ),
          //Description
          Text(
            product.content,
            softWrap: true,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.end,
            maxLines: 3, // Limit the number of lines
            style: TextStyle(height: 1.2), // Adjust line height for compactness
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: CustomColors.PEACH,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(5), // Reduced padding
                child: Text(
                  NumberFormat.currency(
                          locale: 'id', symbol: 'Rp ', decimalDigits: 0)
                      .format(product.harga),
                  style: CustomTexts.HEADING_4(),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: CustomColors.FOREST_GREEN,
                  borderRadius: BorderRadius.circular(12),
                ),
                padding: const EdgeInsets.all(5), // Reduced padding
                child: Text(
                  product.contact,
                  style: CustomTexts.HEADING_4().apply(color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
