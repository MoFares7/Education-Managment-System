import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/AccountScreen/widgets/card_Appointments.dart';
import 'package:saeed/view/screens/MainScreen/widgets/MainAppBar.dart';
import 'package:sizer/sizer.dart';

class MyAppointmentsScreen extends StatelessWidget {
  const MyAppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MainAppBar(title: "My Appointments"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
          child: Column(
            children: [
              AppointmentCard(
                centerName: "Sanad Team",
                dateAppointment: "1/5/2023",
                centerImage: "assets/images/sanad.png",
                onClickDetails: () {},
              ),
              SizedBox(
                height: 1.h,
              ),
              AppointmentCard(
                centerName: "Shuhub Team",
                dateAppointment: "1/5/2023",
                centerImage: "assets/images/sh.jpg",
                onClickDetails: () {},
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
