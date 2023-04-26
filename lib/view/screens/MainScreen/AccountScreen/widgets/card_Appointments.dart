// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/main_button.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class AppointmentCard extends StatelessWidget {
  AppointmentCard({
    super.key,
    required this.centerName,
    required this.centerImage,
    required this.dateAppointment,
    required this.onClickDetails,
  });

  String centerName;
  String centerImage;
  String dateAppointment;
  final void Function() onClickDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      decoration: const BoxDecoration(
        color: AppColors.textColorWhiteBold,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Center Name",
                    style:
                        TextStyle(fontSize: 11.sp, color: AppColors.primary1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      centerName,
                      style: TextStyle(
                          fontSize: 9.sp,
                          color: AppColors.textColorBlackBold,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    "Date appointment ",
                    style:
                        TextStyle(fontSize: 11.sp, color: AppColors.primary1),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      dateAppointment,
                      style: TextStyle(
                          fontSize: 9.sp,
                          color: AppColors.textColorBlackBold,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  MainButton(
                    onClickNext: () {
                      onClickDetails();
                    },
                    titleButton: "More details",
                    width: 30.w,
                    height: 5.h,
                    fontSize: 10.sp,
                      color: AppColors.primary1,
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 35.w,
            height: 20.h,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10),
              ),
              child: Image.asset(
                centerImage,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }
}
