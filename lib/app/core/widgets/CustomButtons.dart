import 'package:flutter/material.dart';

import '../colors/Colors_Value.dart';

Widget primaryButton(String text, Function function) {
  return SizedBox(
    width: double.infinity,
    child: ElevatedButton(
      onPressed: () {
        function();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.FOREST_GREEN,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        padding: const EdgeInsets.all(15),
      ),
      child: Text(text),
    ),
  );
}
