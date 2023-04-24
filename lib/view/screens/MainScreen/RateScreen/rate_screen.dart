import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/widgets/card_center.dart';
import 'package:sizer/sizer.dart';

class MyRateScreen extends StatelessWidget {
  const MyRateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 7.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CenterCard(
              centerType: "Free",
              centerName: "Sanad team",
              centerCity: "Damascus",
              centerImage: "assets/images/sanad.png",
              centerRating: 5,
            )
          ],
        ),
      ),
    );
  }
}
