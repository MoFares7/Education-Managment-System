// ignore: file_names
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../configs/them.dart';

class ItemSlideView extends StatefulWidget {
  final String image;
  final String? title;
  final String? description;
  const ItemSlideView(
      {Key? key, required this.image, this.title, this.description})
      : super(key: key);

  @override
  State<ItemSlideView> createState() => _ItemSlideViewState();
}

class _ItemSlideViewState extends State<ItemSlideView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 1.sp,
        ),
        Expanded(
          flex: 3,
          child: Image.asset(
            widget.image,
            alignment: Alignment.center,
            fit: BoxFit.fitWidth,
            width: 75.w,
            height: 30.h,
          ),
        ),
        Expanded(
          flex: 2,
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 1.2.h, horizontal: 1.w),
                child: Container(
                  width: 90.h,
                  decoration: const BoxDecoration(
                      color: AppColors.textColorWhiteBold,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  child: Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(right: 8.w, left: 8.w, top: 5.h),
                        child: Align(
                          child: Text(
                            widget.title!,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 20,
                                color: AppColors.textColorBlackBold,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 8.w, vertical: 2.h),
                        child: Align(
                          child: Text(
                            widget.description!,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: AppColors.textColorBlackRegular),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
