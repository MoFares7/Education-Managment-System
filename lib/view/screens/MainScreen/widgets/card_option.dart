// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/them.dart';

// ignore: must_be_immutable
class CardOption extends StatelessWidget {
  CardOption({
    required this.title,
    required this.icon,
    required this.textColor,
    required this.iconColor,
    required this.onPressed,
    super.key,
  });
  String title;
  String icon;
  Color textColor;
  Color iconColor;

  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: 10.h,
        width: 85.w,
        decoration: BoxDecoration(
          color: AppColors.textColorWhiteBold,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
          child: Row(children: [
            SvgPicture.asset(icon, height: 4.h, width: 4.w, color: iconColor),
            SizedBox(
              width: 5.w,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 10.sp, color: textColor),
            ),
            SizedBox(
              width: 5.w,
            ),
          ]),
        ),
      ),
    );
  }
}
