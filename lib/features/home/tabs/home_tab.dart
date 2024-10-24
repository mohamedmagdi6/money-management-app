import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:money_management/core/resources/assets_manager.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/resources/font_manager.dart';
import 'package:money_management/core/resources/style_manager.dart';
import 'package:money_management/features/home/widgets/tab_item.dart';
import 'package:money_management/features/home/widgets/top_part_of_home_screen.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TopPartOfHomeScreen(),
        SizedBox(
          height: 35.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const CustomTabBar(),
              SizedBox(
                height: 32.h,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text(
                          'Recent Transaction',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                        Spacer(),
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 300.h,
                      child: Expanded(
                        child: ListView.separated(
                          separatorBuilder: (context, index) => SizedBox(
                            height: 20.h,
                          ),
                          itemCount: 3,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 54.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: ColorManager.white.withOpacity(0.5),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 7.0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: ColorManager.green,
                                      child: ImageIcon(
                                        const AssetImage(IconsAssets.upVector),
                                        color: ColorManager.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10.w,
                                    ),
                                    ImageIcon(
                                      const AssetImage(IconsAssets.moneySign),
                                      color: ColorManager.black,
                                    ),
                                    Text(
                                      '6500',
                                      style: getRegularStyle(
                                          fontSize: FontSize.s22,
                                          color: ColorManager.black),
                                    ),
                                    const Spacer(),
                                    Text(
                                      'Income',
                                      style: getRegularStyle(
                                          fontSize: FontSize.s15,
                                          color: ColorManager.grey),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
