import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:sizer/sizer.dart';

import 'share_button.dart';

class VolunteerCard extends StatelessWidget {
  const VolunteerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 1.h),
      child: Container(
        width: 85.w,
        decoration: BoxDecoration(
            color: AppColors.textColorWhiteBold,
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 30.h,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10)),
              ),
              child: Image.asset(
                "assets/images/test.jpg",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Container(
                height: 5.h,
                width: 15.w,
                decoration: BoxDecoration(
                    color: AppColors.primary1,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Text(
                    "Education",
                    style: TextStyle(
                        fontSize: 8.sp, color: AppColors.textColorWhiteBold),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Text(
                "Leacture about agile",
                style: TextStyle(
                    fontSize: 8.sp,
                    color: AppColors.textColorBlackBold,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Number of teacher Requirment",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackBold,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "10",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackBold,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Number of Student Requirment",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackBold,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "240",
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackBold,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 1.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 5.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                            color: AppColors.primary1,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            "More details",
                            style: TextStyle(
                                fontSize: 8.sp,
                                color: AppColors.textColorWhiteBold),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const ShareButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
