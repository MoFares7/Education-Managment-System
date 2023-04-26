import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/main_button.dart';
import 'package:saeed/view/screens/MainScreen/widgets/MainAppBar.dart';
import 'package:sizer/sizer.dart';

class DetailsAppointmentScreen extends StatelessWidget {
  const DetailsAppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MainAppBar(title: "Details Appointment"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h),
          child: Center(
            child: Container(
                width: 85.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.textColorWhiteBold),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/images/sanad.png",
                        height: 35.h,
                        width: 100.w,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Center Name",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.primary1,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "Sanad Team",
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: AppColors.textColorBlackBold,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Date Appointment",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.primary1,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "1/5/2023",
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: AppColors.textColorBlackBold,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Start date appointment",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.primary1,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "12:30 am",
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: AppColors.textColorBlackBold,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "End date appointment",
                            style: TextStyle(
                                fontSize: 10.sp,
                                color: AppColors.primary1,
                                fontWeight: FontWeight.w800),
                          ),
                          Text(
                            "5:00 pm",
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: AppColors.textColorBlackBold,
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                    ),
                    MainButton(
                      onClickNext: () {},
                      titleButton: "Delete Appointment",
                      width: 60.w,
                      height: 7.h,
                      fontSize: 9.sp,
                      color: AppColors.accent,
                    )
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
