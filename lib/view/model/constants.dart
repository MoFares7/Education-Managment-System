import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../configs/them.dart';

List<DropdownMenuItem<String>> citylistItems = [
  DropdownMenuItem(value: "Damascus", child: Text(tr('Damascus'))),
  DropdownMenuItem(value: "Homs", child: Text(tr('Homs'))),
  DropdownMenuItem(value: "Aleppo", child: Text(tr('Aleppo'))),
  DropdownMenuItem(value: "Daraa", child: Text(tr('Daraa'))),
  DropdownMenuItem(value: "Hama", child: Text(tr('Hama'))),
  DropdownMenuItem(value: "Latakia", child: Text(tr('Latakia'))),
  DropdownMenuItem(value: "Trtous", child: Text(tr('Tartous'))),
];

final List<Widget> carouselItems = [
  Center(
    child: Stack(
      children: [
        Image.asset(
          "assets/images/time.jpg",
          height: 30.h,
          width: 100.w,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: SizedBox(
            height: 15.h,
            width: 35.w,
            child: Text(
              'Orgnize your time and Appointment',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 9.sp, color: AppColors.textColorWhiteBold),
            ),
          ),
        ),
      ],
    ),
  ),
  Center(
    child: Stack(
      children: [
        Image.asset(
          "assets/images/calander.jpg",
          height: 30.h,
          width: 100.w,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h),
          child: SizedBox(
            height: 15.h,
            width: 35.w,
            child: Text(
              'Secdgual your Appointment',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 9.sp, color: AppColors.textColorBlackRegular),
            ),
          ),
        ),
      ],
    ),
  ),
];
