// ignore_for_file: deprecated_member_use

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:sizer/sizer.dart';

class SearchField extends StatelessWidget {
  SearchField({
    Key? key,
    this.onSearch,
  }) : super(key: key);
  final Function(String?)? onSearch;
  final ValueNotifier<String?> searchText = ValueNotifier<String?>(null);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        searchText.value = value == '' ? null : value;
        onSearch!(searchText.value);
      },
      decoration: InputDecoration(
        hintText: tr('search'),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 3.w,
          vertical: 2.h,
        ),
        fillColor: AppColors.textColorWhiteBold,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        hintStyle: const TextStyle(color: Colors.black54),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 3.w),
            margin: EdgeInsets.symmetric(
              horizontal: 3.w,
              vertical: 0.5.h,
            ),
            decoration: const BoxDecoration(
              color: AppColors.primary1,
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: SvgPicture.asset(
              "assets/icons/search.svg",
              color: AppColors.textColorWhiteBold,
            ),
          ),
        ),
      ),
    );
  }
}
