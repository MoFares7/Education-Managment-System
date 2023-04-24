import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/AccountScreen/Presintation/settings_screen.dart';
import 'package:saeed/view/screens/MainScreen/widgets/card_option.dart';
import 'package:sizer/sizer.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 2.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 3.h,
                ),
                SvgPicture.asset(
                  "assets/icons/add_user.svg",
                  height: 15.h,
                  width: 40.w,
                ),
                SizedBox(
                  height: 3.h,
                ),
                Text(
                  "Login to help you",
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.textColorBlackBold,
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Text(
                  "in case join our them you will orgnize your event and life",
                  style: TextStyle(
                      fontSize: 7.sp,
                      color: AppColors.textColorBlackRegular,
                      fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 3.h,
                ),
                CardOption(
                  title: "Setting",
                  textColor: AppColors.primary1,
                  iconColor: AppColors.primary1,
                  icon: "assets/icons/setting.svg",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SettingScreen()));
                  },
                ),
                SizedBox(
                  height: 3.h,
                ),
                CardOption(
                  title: "My Appointments",
                  textColor: AppColors.primary1,
                  iconColor: AppColors.primary1,
                  icon: "assets/icons/appointment.svg",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 3.h,
                ),
                CardOption(
                  title: "My Volunteers",
                  textColor: AppColors.primary1,
                  iconColor: AppColors.primary1,
                  icon: "assets/icons/volunteer.svg",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 3.h,
                ),
                CardOption(
                  title: "About us",
                  textColor: AppColors.primary1,
                  iconColor: AppColors.primary1,
                  icon: "assets/icons/about.svg",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 3.h,
                ),
                CardOption(
                  title: "Log out",
                  textColor: AppColors.primary1,
                  iconColor: AppColors.primary1,
                  icon: "assets/icons/log-out.svg",
                  onPressed: () {},
                ),
                SizedBox(
                  height: 3.h,
                ),
              ],
            ),
          ),
        ));
  }
}
