import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTabBar extends StatefulWidget {
  const CustomTabBar({super.key});

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  List<bool> isSelected = [true, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      borderWidth: 1,
      selectedBorderColor: Colors.black,
      borderColor: Colors.white,
      fillColor: Colors.black,
      borderRadius: BorderRadius.circular(16),
      selectedColor: Colors.white,
      color: Colors.white,
      constraints: BoxConstraints(minHeight: 34.h, minWidth: 80.0.w),
      isSelected: isSelected,
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < isSelected.length; i++) {
            isSelected[i] = i == index;
          }
        });
      },
      children: const [
        Text('Today'),
        Text('Week'),
        Text('Month'),
        Text('Year'),
      ],
    );
  }
}
