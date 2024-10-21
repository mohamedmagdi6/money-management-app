import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';

class IncomeExpensesContainer extends StatelessWidget {
  const IncomeExpensesContainer(
      {super.key,
      this.containerColor,
      this.arrowIcon,
      required this.title,
      required this.cash,
      required this.arrow});
  final Color? containerColor;
  final IconData? arrowIcon;
  final String title;
  final String cash;
  final String arrow;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 164.w,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        color: containerColor,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(16))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ImageIcon(
                    AssetImage(arrow),
                    color: containerColor,
                  ),
                  Container(
                      width: 24.w,
                      height: 16.h,
                      decoration: BoxDecoration(
                          color: containerColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      child: Center(
                        child: Container(
                          width: 10.h,
                          height: 10.h,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Icon(
                            Icons.circle,
                            size: 7,
                            color: containerColor,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              width: 11.w,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: getMediumStyle(
                      color: ColorManager.white, fontSize: FontSize.s14),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  cash,
                  style: getMediumStyle(
                      color: ColorManager.white, fontSize: FontSize.s14),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
