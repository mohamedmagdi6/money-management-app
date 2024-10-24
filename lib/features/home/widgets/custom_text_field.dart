import 'package:flutter/material.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,
      required this.hintText,
      this.color,
      this.validator,
      this.controller});
  String hintText;
  Color? color;
  final String? Function(String?)? validator;
  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(color: Colors.transparent, width: 2)),
          // border: OutlineInputBorder(
          //     borderRadius: BorderRadius.circular(16),
          //     borderSide: BorderSide(color: ColorManager.black, width: 2)),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide(
                width: 2,
                color: Colors.transparent,
              )),
          hintText: hintText,
          hintStyle: getRegularStyle(
              color: ColorManager.grey, fontSize: FontSize.s16)),
    );
  }
}
