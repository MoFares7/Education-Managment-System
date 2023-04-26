import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/MainAppBar.dart';

class AboutCenterScreen extends StatelessWidget {
  const AboutCenterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MainAppBar(title: "About Center"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Who us !",
                style: TextStyle(
                    fontSize: 11.sp,
                    color: AppColors.primary1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "As an integrated service provider, we are perfectly positioned to offer maintenance services and financing solutions to the Aviation, Healthcare, Complex Assets ...",
                style: TextStyle(
                    fontSize: 8.sp,
                    color: AppColors.textColorBlackRegular,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                color: AppColors.textColorBlackRegular,
                thickness: 1,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "The address",
                style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.primary1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/address.svg",
                    color: AppColors.primary1,
                    width: 12.sp,
                    height: 12.sp,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "Damascus, afif",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackRegular,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                color: AppColors.textColorBlackRegular,
                thickness: 1,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "Time work",
                style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.primary1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/time.svg",
                    color: AppColors.primary1,
                    width: 12.sp,
                    height: 12.sp,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "from 9 am to 5 pm",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackRegular,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                color: AppColors.textColorBlackRegular,
                thickness: 1,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                "To communication",
                style: TextStyle(
                    fontSize: 10.sp,
                    color: AppColors.primary1,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/mobile.svg",
                    color: AppColors.primary1,
                    width: 12.sp,
                    height: 12.sp,
                  ),
                  SizedBox(
                    width: 2.w,
                  ),
                  Text(
                    "+96303939434",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackRegular,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Divider(
                color: AppColors.textColorBlackRegular,
                thickness: 1,
              ),
              SizedBox(
                height: 1.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
