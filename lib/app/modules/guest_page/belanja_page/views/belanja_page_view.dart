import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:padem_arsip_digital/app/modules/guest_page/belanja_page/controllers/belanja_page_controller.dart';
import '../../../../core/widgets/CustomFooter.dart';

class BelanjaPageView extends GetView<BelanjaPageController> {
  const BelanjaPageView({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO : Implement under 400 width resolution view.
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Beli Dari Dusun",
              style: CustomTexts.HEADING_3(),
            ),
          ),
          //Tab Button Section
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: CustomColors.LIGHT_OCEAN_BLUE,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Homestay",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Culinary",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Tourist Guide",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
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
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) => Container(
                color: Colors.red,
                child: ProductCard(),
              ),
              itemCount: 10,
              shrinkWrap: true,
            ),
          ),
          // Footer Section
          // CustomFooter(MediaQuery.of(context).size.width),
        ],
      ),
    );
  }

  Widget ProductCard() {
    return Container(
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
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
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
            child: Image.asset(
              'assets/images/product_image.png',
              fit: BoxFit.contain,
            ),
          ),
          //Title card
          Text(
            "Product Name",
            style: CustomTexts.HEADING_3(),
          ),
          //Description
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec nec odio vitae nunc. Donec nec odio vitae nunc. Donec nec odio vitae nunc.',
            softWrap: true,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.end,
            maxLines: 3, // Limit the number of lines
            style: TextStyle(height: 1.2), // Adjust line height for compactness
          ),
          SizedBox(height: 5),
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
                  'Rp 999.000,00',
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
                  '+62 8788888888',
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
