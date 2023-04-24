
// ignore_for_file: deprecated_member_use, file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:saeed/view/screens/MainScreen/AccountScreen/Presintation/account_screen.dart';
import 'package:saeed/view/screens/MainScreen/HomeScreen/Presintation/home_screen.dart';
import 'package:saeed/view/screens/MainScreen/RateScreen/rate_screen.dart';

import '../../configs/them.dart';
import 'CentersScreen/Presintation/centers_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

    final List<Widget> pages = [
       const HomeScreen(),
       const CentersScreen(),
       const MyRateScreen(),
       const AccountScreen(),
    ];

    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (BuildContext context, int index, Widget? child) {
          return IndexedStack(
            index: index,
            children: pages,
          );
        },
      ),
      bottomNavigationBar: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (BuildContext context, int index, Widget? child) {
          return Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ]),
            child: BottomNavigationBar(
              elevation: 0,
              backgroundColor: const Color.fromARGB(216, 241, 241, 241),
              iconSize: 25,
              currentIndex: index,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: true,
              selectedFontSize: 15,
              selectedIconTheme: const IconThemeData(
                color: AppColors.primary1,
                size: 25,
              
              ),
              selectedItemColor: AppColors.primary1,
              selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
              unselectedIconTheme: const IconThemeData(
                color: AppColors.primary1,
              ),
              unselectedItemColor: AppColors.primary1,
              items: [
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/home.svg",
                          height: 25,
                          width: 25,
                          color: AppColors.primary1,
                        )
                      ],
                    ),
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/center.svg",
                          height: 25,
                          width: 25,
                          color: AppColors.primary1,
                        )
                      ],
                    ),
                  ),
                  label: 'Centers',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/star.svg",
                          height: 25,
                          width: 25,
                          color: AppColors.primary1,
                        )
                      ],
                    ),
                  ),
                  label: 'My Rate',
                ),
                BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          "assets/icons/user.svg",
                          height: 25,
                          width: 25,
                          color: AppColors.primary1,
                        )
                      ],
                    ),
                  ),
                  label: 'Account',
                ),
              ],
              onTap: (int index) {
                currentIndex.value = index;
              },
            ),
          );
        },
      ),
    );
  }
}
