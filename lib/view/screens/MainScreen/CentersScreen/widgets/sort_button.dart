import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:sizer/sizer.dart';

class SortButton extends StatelessWidget {
  SortButton({super.key, required this.title, required this.onPressed});
  final String title;
  final Function() onPressed;
  final ValueNotifier<bool> _isSelected = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: _isSelected,
      builder: (context, value, child) {
        return GestureDetector(
          onTap: () {
            _isSelected.value = !_isSelected.value;
            onPressed();
          },
          child: Container(
            decoration: BoxDecoration(
                color: _isSelected.value
                    ? AppColors.primary1
                    : AppColors.textColorWhiteBold,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 7.sp,
                    color: _isSelected.value
                        ? AppColors.textColorWhiteBold
                        : AppColors.textColorBlackRegular),
              ),
            ),
          ),
        );
      },
    );
  }
}
