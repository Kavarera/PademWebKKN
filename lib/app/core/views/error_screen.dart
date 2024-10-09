import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/styles/Text_Styles.dart';

class ErrorScreen extends StatelessWidget {
  final String message;
  ErrorScreen(this.message, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/maintenance.png",
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          message,
          style: CustomTexts.HEADING_2(),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
