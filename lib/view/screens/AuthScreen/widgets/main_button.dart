import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/them.dart';

class MainButton extends StatelessWidget {
  final void Function() onClickNext;
  final String titleButton;
  final double width;
  final double height;
  final double fontSize;
  final Color color;
  const MainButton(
      {Key? key,
      required this.onClickNext,
      required this.titleButton,
      required this.width,
      required this.height,
      required this.fontSize,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 1.w, vertical: 2.2.h),
      child: SizedBox(
        width: width,
        height: height,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                backgroundColor: color),
            onPressed: () {
              onClickNext();
            },
            child: Center(
                child: Text(
              titleButton,
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.w700,
                  color: AppColors.textColorWhiteBold),
            ))),
      ),
    );
  }
}
