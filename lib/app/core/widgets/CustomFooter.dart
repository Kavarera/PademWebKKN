import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';
import 'package:url_launcher/url_launcher.dart';

final List<Widget> villageProfile = [
  FlutterLogo(size: 64),
  const SizedBox(height: 8),
  Text(
    "Dusun Padem",
    style: CustomTexts.HEADING_4(color: Colors.white),
    textAlign: TextAlign.center,
    softWrap: true,
  ),
  Text(
    "Desa Girikarto",
    style: TextStyle(color: Colors.white),
    textAlign: TextAlign.center,
    softWrap: true,
  ),
  Text(
    "Kecamatan Panggang",
    style: TextStyle(color: Colors.white),
    textAlign: TextAlign.center,
    softWrap: true,
  ),
  Text(
    "Kabupaten Gunungkidul",
    style: TextStyle(color: Colors.white),
    textAlign: TextAlign.center,
    softWrap: true,
  ),
  Text(
    "Provinsi Daerah Istimewa Yogyakarta",
    style: TextStyle(color: Colors.white),
    textAlign: TextAlign.center,
    softWrap: true,
  ),
];

final Map<String, Map<String, String>> villageContacts = {
  "email": {
    "text": "example@domain.com",
    "url": "mailto:example@domain.com",
  },
  "instagram": {
    "text": "username",
    "url": "instagram.com/username",
  },
  "call-center": {"text": "+62 800 0000 0000", "url": "tel://+6280000000000"},
};

Column CustomFooter(double width) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25), topRight: Radius.circular(25)),
          color: CustomColors.LIGHT_OCEAN_BLUE,
        ),
        child: width < 600 ? shrinkedChild() : expandedChild(),
      ),
      Container(
        height: 32,
        width: width,
        color: CustomColors.OCEAN_BLUE,
      )
    ],
  );
}

Widget expandedChild() {
  return Row(
    children: [
      Expanded(
        child: Column(
          children: villageProfile,
        ),
      ),
      const SizedBox(width: 16),
      Expanded(
        child: Column(
          children: villageContacts.entries.map((item) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/${item.key}.png',
                    width: 32,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    item.value["text"]!,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }).toList(),
        ),
      )
    ],
  );
}

Widget shrinkedChild() {
  return Column(
    children: [
      ...villageProfile,
      const SizedBox(height: 32),
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: villageContacts.entries.map((item) {
            return InkWell(
              onTap: () {
                _launchUrl(item.value['url']!);
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Image.asset(
                  'assets/images/${item.key}.png',
                  width: 24,
                ),
              ),
            );
          }).toList())
    ],
  );
}

Future<void> _launchUrl(String stringUrl) async {
  Uri url = Uri.parse(stringUrl);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
