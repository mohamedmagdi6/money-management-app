import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      required this.buttonName,
      required this.color,
      required this.onPressed});
  Color color;
  String buttonName;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            minimumSize: WidgetStateProperty.all(Size(double.infinity, 56.h)),
            backgroundColor: WidgetStateProperty.all(color),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ))),
        onPressed: onPressed,
        child: Text(buttonName,
            style: getSemiBoldStyle(
                color: ColorManager.white, fontSize: FontSize.s18)));
  }
}
