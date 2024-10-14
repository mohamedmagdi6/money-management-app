import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_management/core/resources/assets_manager.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/constants_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 389.h,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(70),
              bottomRight: Radius.circular(70),
            ),
            child: Image.asset(
              ImageAssets.splashImage,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          height: 167.h,
        ),
        SizedBox(
          width: 283.h,
          height: 69.w,
          child: Text(TextConstant.splashTitle,
              style: getBoldStyle(
                  color: ColorManager.primaryDark, fontSize: FontSize.s30)),
        ),
        SizedBox(
          height: 32.h,
        ),
        SizedBox(
          width: 270.h,
          height: 38.w,
          child: Text(
            TextConstant.splashSubTitle,
            style: getRegularStyle(
                color: ColorManager.primaryDark, fontSize: FontSize.s16),
          ),
        ),
        SizedBox(
          height: 32.h,
        ),
        GestureDetector(
          onTap: () {
            // Navigator.push(context, MaterialPageRoute(
            //   builder: (context) {
            //     return HomeScreen();
            //   },
            // ));
          },
          child: Container(
            width: 194.h,
            height: 42.w,
            decoration: BoxDecoration(
                color: ColorManager.primaryDark,
                borderRadius: BorderRadius.circular(5)),
            child: Center(
              child: Text(
                TextConstant.continueButton,
                style: getRegularStyle(
                    color: ColorManager.white, fontSize: FontSize.s16),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
