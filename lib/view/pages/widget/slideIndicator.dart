import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../configs/them.dart';

class SlideIndicator extends StatelessWidget {
  final double dotIndex;
  const SlideIndicator({Key? key, required this.dotIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dotIndex,
      decorator: DotsDecorator(
        size: Size(5.w, 1.3.h),
        activeSize: Size(15.w, 1.h),
        color: Color.fromARGB(255, 224, 218, 236),
        activeColor: AppColors.primary1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        activeShape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
