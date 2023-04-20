import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../configs/them.dart';

List<DropdownMenuItem<String>> jurnalistItems = [
  DropdownMenuItem(value: "Damascus", child: Text(tr('Damascus'))),
  DropdownMenuItem(value: "Homs", child: Text(tr('Homs'))),
];

final List<Widget> carouselItems = [
  Container(
    child: Center(
      child: Stack(
        children: [
          Image.asset("assets/images/time.jpg"),
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
  ),
  Container(
    child: Center(
      child: Stack(
        children: [
          Image.asset("assets/images/calander.jpg"),
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
  ),
];
