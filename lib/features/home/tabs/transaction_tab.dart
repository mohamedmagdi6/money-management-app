import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_management/core/resources/assets_manager.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/constants_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';

class TransactionTab extends StatelessWidget {
  TransactionTab({super.key});
  List<String> time = ['Day', 'Month', 'Year'];
  String? choosenTime;
  List<String> categories = ['Day', 'Month', 'Year'];
  String? choosenCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          TextConstant.transactions,
          style: getBoldStyle(color: ColorManager.black, fontSize: 18),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(
              height: 39.h,
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  height: 40.h,
                  width: 96.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorManager.black, width: 2)),
                  child: DropdownButtonFormField(
                    padding: const EdgeInsets.only(top: 5),
                    decoration: const InputDecoration.collapsed(hintText: ''),
                    items: time.map((element) {
                      return DropdownMenuItem(
                        value: element,
                        child: Text(element),
                      );
                    }).toList(),
                    hint: const Text('Month'),
                    value: choosenTime,
                    onChanged: (value) {
                      choosenTime = value;
                    },
                    icon: ImageIcon(
                      const AssetImage(IconsAssets.transArrow),
                      color: ColorManager.primary,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12.w),
                  height: 40.h,
                  width: 96.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: ColorManager.black, width: 2)),
                  child: DropdownButtonFormField(
                    alignment: AlignmentDirectional.center,
                    padding: const EdgeInsets.only(top: 5),
                    decoration: const InputDecoration.collapsed(hintText: ''),
                    items: time.map((element) {
                      return DropdownMenuItem(
                        value: element,
                        child: Text(element),
                      );
                    }).toList(),
                    hint: const Text('all'),
                    value: choosenTime,
                    onChanged: (value) {
                      choosenCategory = value;
                    },
                    icon: ImageIcon(
                      const AssetImage(IconsAssets.transArrow),
                      color: ColorManager.primary,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 22.h,
            ),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                  height: 22.h,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    height: 89.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: ColorManager.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shopping',
                                  style: getMediumStyle(
                                      color: ColorManager.black,
                                      fontSize: FontSize.s16)),
                              Text('Buy some grocery',
                                  style: getMediumStyle(
                                      color: ColorManager.grey,
                                      fontSize: FontSize.s13)),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text('- 5120',
                                  style: getSemiBoldStyle(
                                      color: ColorManager.red,
                                      fontSize: FontSize.s16)),
                              Text('10:00 AM',
                                  style: getMediumStyle(
                                      color: ColorManager.grey,
                                      fontSize: FontSize.s13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
