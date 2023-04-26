import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/main_button.dart';
import 'package:saeed/view/screens/MainScreen/DetailsCenterScreen/Presintation/volunteer_form_screen.dart';
import 'package:saeed/view/screens/MainScreen/widgets/MainAppBar.dart';
import 'package:sizer/sizer.dart';

class DetailsVolunteer extends StatelessWidget {
  const DetailsVolunteer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MainAppBar(title: "Details Volunteer"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 5.w,
          vertical: 3.h,
        ),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.textColorWhiteBold,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 40.h,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            ' "https://images.unsplash.com/photo-1554303488-2bbef59eb9fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      )),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr('Activity type'),
                        style: TextStyle(
                          color: AppColors.textColorBlackBold,
                          fontSize: 9.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Education",
                        style: TextStyle(
                          //color: Theme.of(context).primaryColor,
                          fontSize: 10.sp,
                          color: AppColors.textColorBlackRegular,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Center(
                    child: Text(
                      "Leacture about agile",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: AppColors.textColorBlackBold,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    "Description",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 9.sp,
                        color: AppColors.textColorBlackBold,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w),
                  child: Text(
                    "Agile is an iterative approach to project management and software development that helps teams deliver value to their customers faster and with fewer headaches and the course is created to learning this skils",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 8.sp,
                        color: AppColors.textColorBlackRegular,
                        fontWeight: FontWeight.w300),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr('Number of teacher required'),
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.textColorBlackBold,
                        ),
                      ),
                      Text("21",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr('Current number of teacher'),
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.textColorBlackBold,
                        ),
                      ),
                      Text(
                        "10",
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr('Number of Students required'),
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.textColorBlackBold,
                        ),
                      ),
                      Text("500",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr('Current number of students'),
                        style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.textColorBlackBold,
                        ),
                      ),
                      Text(
                        "320",
                        style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 3.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        tr('Activity times'),
                        style: TextStyle(
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textColorBlackBold,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 2.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tr('Duration of activity (number of days)'),
                          style: TextStyle(
                              fontSize: 10.sp,
                              color: AppColors.textColorBlackBold)),
                      Text("5",
                          style: TextStyle(
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tr('Start activity'),
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textColorBlackBold,
                          )),
                      Text("12/5/2023",
                          style: TextStyle(
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tr('End activity'),
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textColorBlackBold,
                          )),
                      Text("17/5/2023",
                          style: TextStyle(
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(tr('Time of Campigain'),
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: AppColors.textColorBlackBold,
                          )),
                      Text("3 to 5 (pm)",
                          style: TextStyle(
                            color: AppColors.textColorBlackRegular,
                            fontWeight: FontWeight.w400,
                            fontSize: 10.sp,
                          )),
                    ],
                  ),
                ),
                SizedBox(
                  height: 3.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.w,
                  ),
                  child: Center(
                    child: Text(
                      tr('Activity days'),
                      style: TextStyle(
                          fontSize: 10.sp,
                          color: AppColors.textColorBlackBold,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Wrap(
                  alignment: WrapAlignment.spaceEvenly,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 22 / 2,
                    ),
                    child: Center(
                      child: MainButton(
                          onClickNext: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => VolunteerFormScreen(),
                                ));
                            /**
                         *    if (volunteerModel.isMeIncluded!) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MyActivitiesScreen()));
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VolunteerInfoScreen(
                                campaignID: volunteerModel.id,
                              ),
                            ),
                          );
                        }
                         */
                          },
                          titleButton: "Volunteer now",
                          width: 60.w,
                          height: 7.h,
                          color: AppColors.primary1,
                          fontSize: 10.sp),
                    )),
                const SizedBox(
                  height: 22,
                )
              ]),
        ),
      ),
    );
  }
}

class DayItem extends StatelessWidget {
  const DayItem({
    Key? key,
    //  required this.day,
  }) : super(key: key);
  //final Day day;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(22 / 2),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 22 * 2,
          vertical: 22 * 0.5,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).iconTheme.color,
        ),
        child: Center(
          child: Text(
            "Friday",
            style: TextStyle(
                fontSize: 8.sp, color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
