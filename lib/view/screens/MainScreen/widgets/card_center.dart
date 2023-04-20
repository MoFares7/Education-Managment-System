import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/main_button.dart';
import 'package:sizer/sizer.dart';

class CardCenter extends StatelessWidget {
  CardCenter(
      {super.key,
      required this.centerType,
      required this.centerName,
      required this.centerCity,
      required this.centerImage});
  String centerType;
  String centerName;
  String centerCity;
  String centerImage;

  @override
  Widget build(BuildContext context) {
    var _svaeRating;
    return Container(
      height: 30.h,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 4.h,
                  width: 15.w,
                  decoration: const BoxDecoration(
                    color: AppColors.primary1,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      centerType,
                      style: const TextStyle(
                          fontSize: 15, color: AppColors.textColorWhiteBold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.vertical,
                      itemCount: 4,
                      itemSize: 25,
                      itemPadding: const EdgeInsets.symmetric(vertical: 5),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: AppColors.primary1,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    Column(
                      children: [
                        Text(
                          "Center Name",
                          style: TextStyle(
                              fontSize: 11.sp, color: AppColors.primary1),
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
                          "Center City",
                          style: TextStyle(
                              fontSize: 11.sp, color: AppColors.primary1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            centerCity,
                            style: TextStyle(
                                fontSize: 9.sp,
                                color: AppColors.textColorBlackBold,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        MainButton(
                          onClickNext: () {},
                          titleButton: "More details",
                          width: 30.w,
                          height: 5.h,
                          fontSize: 10.sp,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            width: 35.w,
            height: 100.h,
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

HalfFillrdIcon() {}
