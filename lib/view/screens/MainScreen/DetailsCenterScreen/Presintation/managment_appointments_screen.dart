import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/widgets/MainAppBar.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/card_option.dart';

class ManagmentAppointments extends StatelessWidget {
  const ManagmentAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MainAppBar(title: "Managment Appointments")),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CardOption(
                title: "Add Appointment",
                textColor: AppColors.primary1,
                icon: "assets/icons/appointment-new.svg",
                iconColor: AppColors.primary1,
                onPressed: () {},
              ),
              SizedBox(
                height: 3.h,
              ),
              CardOption(
                title: "Delete Appointment",
                textColor: AppColors.primary1,
                icon: "assets/icons/appointment-missed.svg",
                iconColor: AppColors.primary1,
                onPressed: () {},
              ),
              SizedBox(
                height: 3.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
