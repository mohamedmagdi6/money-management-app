import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_management/core/resources/assets_manager.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/constants_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';
import 'package:money_management/core/resources/values_manager.dart';
import 'package:money_management/features/home/widgets/custom_button.dart';
import 'package:money_management/features/home/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class AddTransactionScreen extends StatelessWidget {
  AddTransactionScreen({super.key});
  List<String> categories = [
    'food',
    'salary',
    'shopping',
    'fuel',
  ];
  String? choosenCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Add Transaction',
          style: getSemiBoldStyle(
              color: ColorManager.black, fontSize: FontSize.s18),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'How much?',
                style: getSemiBoldStyle(
                  color: ColorManager.grey,
                  fontSize: FontSize.s18,
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: [
                  ImageIcon(
                    const AssetImage(
                      IconsAssets.money,
                    ),
                    color: ColorManager.black,
                    size: 40,
                  ),
                  SizedBox(
                    width: 11.w,
                  ),
                  Text(
                    '55698',
                    style: getSemiBoldStyle(
                        color: ColorManager.black, fontSize: FontSize.s40),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 355.h,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12.w),
                      height: 57.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border:
                              Border.all(color: ColorManager.black, width: 2)),
                      child: Center(
                        child: DropdownButtonFormField(
                          padding: const EdgeInsets.only(top: 5),
                          decoration:
                              const InputDecoration.collapsed(hintText: ''),
                          items: categories.map((element) {
                            return DropdownMenuItem(
                              value: element,
                              child: Text(element),
                            );
                          }).toList(),
                          hint: const Text('Category'),
                          style: getRegularStyle(
                              color: ColorManager.grey, fontSize: FontSize.s16),
                          value: choosenCategory,
                          onChanged: (value) {
                            choosenCategory = value;
                          },
                          icon: ImageIcon(
                            const AssetImage(IconsAssets.transArrow),
                            color: ColorManager.primary,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 37.h,
                    ),
                    Container(
                        height: 57.h,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: ColorManager.black, width: 2)),
                        child: CustomTextField(hintText: 'Description')),
                    SizedBox(
                      height: 37.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 25,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorManager.green,
                          ),
                          child: Center(
                            child: Text(
                              TextConstant.income,
                              style: getBoldStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s16),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16.w,
                        ),
                        Container(
                          height: 25,
                          width: 85,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: ColorManager.red,
                          ),
                          child: Center(
                            child: Text(
                              TextConstant.expense,
                              style: getBoldStyle(
                                  color: ColorManager.white,
                                  fontSize: FontSize.s16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                        height: 57.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: ColorManager.black, width: 2)),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: AppPadding.p18.h, left: AppPadding.p16),
                          child: Text(
                            TextConstant.pickYourDate,
                            style: getRegularStyle(
                                color: ColorManager.grey,
                                fontSize: FontSize.s16),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 76.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CustomButton(
                  buttonName: TextConstant.continueButton,
                  color: ColorManager.primary,
                  onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
