import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';

TextField textFieldWithLabel({
  required TextEditingController controller,
  required String placeholder,
  bool? isObscure,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) {
  return TextField(
    obscureText: isObscure ?? false,
    controller: controller,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      label: Text(placeholder),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.LIGHT_GRAY),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.LIGHT_GRAY),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.LIGHT_GRAY, width: 1.5),
      ),
    ),
  );
}
