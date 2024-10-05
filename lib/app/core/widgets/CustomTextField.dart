import 'package:flutter/material.dart';
import 'package:padem_arsip_digital/app/core/colors/Colors_Value.dart';

TextField textFieldWithLabel({
  required var controller,
  required String placeholder,
  bool? isObscure,
  bool readOnly = false,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) {
  return TextField(
    obscureText: isObscure ?? false,
    controller: controller,
    readOnly: readOnly,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      label: Text(placeholder),
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.DARK_GRAY),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.DARK_GRAY),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.DARK_GRAY, width: 1.5),
      ),
    ),
  );
}

TextField textFieldWithoutLabel({
  required var controller,
  required String placeholder,
  bool? isObscure,
  bool readOnly = false,
  Widget? prefixIcon,
  Widget? suffixIcon,
}) {
  return TextField(
    obscureText: isObscure ?? false,
    controller: controller,
    readOnly: readOnly,
    decoration: InputDecoration(
      prefixIcon: prefixIcon,
      suffixIcon: suffixIcon,
      filled: true,
      hintText: placeholder,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.DARK_GRAY),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.DARK_GRAY),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(color: CustomColors.DARK_GRAY, width: 1.5),
      ),
    ),
  );
}
