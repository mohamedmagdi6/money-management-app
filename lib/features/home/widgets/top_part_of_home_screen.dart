import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_management/core/resources/assets_manager.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/constants_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';
import 'package:money_management/core/resources/values_manager.dart';

import 'in_ex_container.dart';

class TopPartOfHomeScreen extends StatelessWidget {
  const TopPartOfHomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 351.h,
      width: double.infinity,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30)),
          gradient: LinearGradient(colors: [
            Color(0xFFFFF6E5),
            Color(0xFFECE1D3),
            Color(0xFFD3C5BC),
            Color(0xFFBFAFAA),
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 22.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'MONDAY 9',
                        style: getRegularStyle(
                            color: ColorManager.black, fontSize: FontSize.s14),
                      ),
                      Text(
                        'NOVEMEBER',
                        style: getRegularStyle(
                            color: ColorManager.black, fontSize: FontSize.s14),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.purple, width: 3),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/Screenshot 2024-02-29 002832.png',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    'MAGDI',
                    style: getRegularStyle(
                        color: ColorManager.black, fontSize: FontSize.s14),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 21.h,
            ),
            const Divider(
              thickness: 1,
              endIndent: 15,
              indent: 15,
              color: Colors.black,
            ),
            SizedBox(
              height: 51.h,
            ),
            Text(TextConstant.accountBalance,
                style: getMediumStyle(
                    color: ColorManager.grey, fontSize: FontSize.s14)),
            Text('9400.0',
                style: getSemiBoldStyle(
                    color: ColorManager.black, fontSize: FontSize.s40)),
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                IncomeExpensesContainer(
                  containerColor: ColorManager.green,
                  arrowIcon: Icons.arrow_downward,
                  title: TextConstant.income,
                  cash: '25000',
                  arrow: IconsAssets.downArrow,
                ),
                const Spacer(),
                IncomeExpensesContainer(
                  containerColor: ColorManager.red,
                  arrowIcon: Icons.arrow_upward,
                  title: TextConstant.expense,
                  cash: '25000',
                  arrow: IconsAssets.upArrow,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
