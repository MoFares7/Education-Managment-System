import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:sizer/sizer.dart';

import '../../../../model/constants.dart';
import 'sort_button.dart';

class SortOptions extends StatelessWidget {
  SortOptions({super.key});
  final ValueNotifier<String?> _selectedValue = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SortButton(title: "Top Rated", onPressed: () {  },),
        SizedBox(
          width: 10.w,
        ),
        SortButton(title: "Free", onPressed: () {  },),
        SizedBox(
          width: 10.w,
        ),
        ValueListenableBuilder(
          valueListenable: _selectedValue,
          builder: (context, value, child) {
            return Container(
              width: 33.w,
              height: 4.h,
              decoration: BoxDecoration(
                color: AppColors.textColorWhiteRegular,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: DropdownButtonFormField2<String>(
                  isExpanded: true,
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  decoration: InputDecoration(
                    isDense: true,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 2.w, vertical: 1.h),
                    hintText: "City".tr(),
                    border: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                  value: value,
                  onChanged: (newValue) {
                    _selectedValue.value = newValue!;
                  },
                  items: citylistItems),
            );
          },
        )
      ],
    );
  }
}
