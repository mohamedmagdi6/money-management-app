import 'package:flutter/material.dart';
import 'package:money_management/core/resources/assets_manager.dart';
import 'package:money_management/core/resources/color_manager.dart';
import 'package:money_management/core/routes/routes.dart';
import 'package:money_management/features/add_transaction_screen.dart';
import 'package:money_management/features/home/tabs/home_tab.dart';
import 'package:money_management/features/home/tabs/profile_tab.dart';
import 'package:money_management/features/home/tabs/statistics_tab.dart';
import 'package:money_management/features/home/tabs/transaction_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: SizedBox(
          width: 60,
          height: 60,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              Navigator.pushNamed(context, Routes.addTransactions);
            },
            backgroundColor: ColorManager.primary,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(15),
          ),
          child: BottomAppBar(
            color: ColorManager.white,
            height: 89,
            clipBehavior: Clip.antiAlias,
            shape: const CircularNotchedRectangle(),
            notchMargin: 10,
            padding: EdgeInsets.zero,
            child: BottomNavigationBar(
              elevation: 0,
              selectedItemColor: ColorManager.primary,
              unselectedItemColor: ColorManager.grey,
              backgroundColor: Colors.transparent,
              type: BottomNavigationBarType.fixed,
              onTap: (value) {
                setState(() {
                  currentIndex = value;
                });
              },
              currentIndex: currentIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(IconsAssets.home),
                      size: 30,
                    ),
                    label: 'Home'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(IconsAssets.transaction),
                      size: 30,
                    ),
                    label: 'Transaction'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(IconsAssets.statitics),
                      size: 30,
                    ),
                    label: 'Statistics'),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(IconsAssets.profile),
                      size: 30,
                    ),
                    label: 'Profile'),
              ],
            ),
          ),
        ),
        backgroundColor: const Color(0xFFA89696),
        body: tabs[currentIndex]);
  }

  List<Widget> tabs = [
    const HomeTab(),
    TransactionTab(),
    const StatisticsTab(),
    const ProfileTab()
  ];
}
