import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';

class ErrorScreen extends StatelessWidget {
  final String message;
  ErrorScreen(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/images/maintenance.png",
        ),
        Text(
          message,
          style: CustomTexts.HEADING_2(),
        )
      ],
    );
  }
}
