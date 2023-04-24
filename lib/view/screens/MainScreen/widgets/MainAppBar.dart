// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:sizer/sizer.dart';

class MainAppBar extends StatelessWidget {
  MainAppBar({Key? key, required this.title}) : super(key: key);

  String title;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.primary1,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        splashRadius: 20,
        icon: Icon(Icons.arrow_back,
            size: 14.sp, color: AppColors.textColorWhiteBold),
      ),
      centerTitle: true,
      elevation: 0,
      automaticallyImplyLeading: false,
      title: Text(
        title,
        style: TextStyle(fontSize: 11.sp, color: AppColors.textColorWhiteBold),
      ),
    );
  }
}
