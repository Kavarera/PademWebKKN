import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';

Container CustomFooter = Container(
    width: double.infinity,
    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25), topRight: Radius.circular(25)),
      color: CustomColors.LIGHT_OCEAN_BLUE,
    ),
    child: Row(
      children: [
        Expanded(
          child: Row(
            children: [
              FlutterLogo(size: 64),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Dusun Padem",
                      style: CustomTexts.HEADING_4(),
                    ),
                    Text(
                      "Desa Girikarto\nKecamatan Panggang\nKabupaten Gunungkidul\nProvinsi Daerah Istimewa Yogyakarta",
                      // style: CustomTexts.HEADING_4(),
                      softWrap: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
