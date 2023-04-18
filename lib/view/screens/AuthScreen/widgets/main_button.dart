import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/them.dart';

class MainButton extends StatelessWidget {
  final void Function() onClickNext;
  final String titleButton;
  final double width;
  final double height;
  const MainButton(
      {Key? key,
      required this.onClickNext,
      required this.titleButton,
      required this.width,
      required this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2.2.h),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: AppColors.primary1),
            onPressed: () {
              onClickNext();
            },
            child: Center(
                child: Text(
              titleButton,
              style: TextStyle(
                  fontSize: 11.sp,
                  fontWeight: FontWeight.w800,
                  color: AppColors.textColorWhiteBold),
            ))),
      ),
    );
  }
}
