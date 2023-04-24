import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/DetailsCenterScreen/Presintation/managment_appointments.dart';
import 'package:saeed/view/screens/MainScreen/widgets/MainAppBar.dart';
import 'package:saeed/view/screens/MainScreen/DetailsCenterScreen/widgets/card_center_image.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/card_option.dart';

class DetailsCenterScreen extends StatelessWidget {
  DetailsCenterScreen({Key? key}) : super(key: key);

  final ValueNotifier<bool> _isRated = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isSendFeedback = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackgroundColor,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MainAppBar(
            title: "Details Center",
          )),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 4.h, left: 5.w),
              child: Text(
                "Ready to join us ?",
                style: TextStyle(
                    color: AppColors.primary1,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardCenterImage(
                    src:
                        "https://images.unsplash.com/photo-1554303488-2bbef59eb9fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  CardCenterImage(
                    src:
                        "https://plus.unsplash.com/premium_photo-1678204579965-5d2339302d3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  CardCenterImage(
                    src:
                        "https://images.unsplash.com/photo-1554303488-2bbef59eb9fe?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  CardCenterImage(
                    src:
                        "https://plus.unsplash.com/premium_photo-1678204579965-5d2339302d3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
              child: Text(
                "our jops ?",
                style: TextStyle(
                  color: AppColors.primary1,
                  fontSize: 12.sp,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: CardOption(
                  title: "Managment Appointment",
                  textColor: AppColors.primary1,
                  icon: "assets/icons/appointment.svg",
                  iconColor: AppColors.primary1,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const ManagmentAppointments()));
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: CardOption(
                  title: "Vlounteer with us",
                  textColor: AppColors.primary1,
                  icon: "assets/icons/volunteer.svg",
                  iconColor: AppColors.primary1,
                  onPressed: () {},
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: ValueListenableBuilder(
                  valueListenable: _isRated,
                  builder: (context, value, child1) {
                    return Column(
                      children: [
                        CardOption(
                          title: "Rate Center",
                          textColor: AppColors.primary1,
                          icon: "assets/icons/star.svg",
                          iconColor: AppColors.primary1,
                          onPressed: () {
                            _isRated.value = !_isRated.value;
                          },
                        ),
                        _isRated.value
                            ? ValueListenableBuilder(
                                valueListenable: _isSendFeedback,
                                builder: (context, value, child1) {
                                  return Column(
                                    children: [
                                      RatingBar.builder(
                                        initialRating: 0,
                                        minRating: 1,
                                        direction: Axis.horizontal,
                                        itemCount: 4,
                                        itemSize: 35,
                                        itemPadding: EdgeInsets.symmetric(
                                            vertical: 1.h, horizontal: 5.w),
                                        itemBuilder: (context, _) => const Icon(
                                          Icons.star,
                                          color: AppColors.primary1,
                                        ),
                                        onRatingUpdate: (rating) {
                                    

                                          _isSendFeedback.value =
                                              !_isSendFeedback.value;
                                     
                                        },
                                      ),
                                      _isSendFeedback.value
                                          ? Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10.w),
                                              child: Stack(
                                                children: [
                                                  const TextField(
                                                    keyboardType:
                                                        TextInputType.multiline,
                                                    maxLength: 50,
                                                    minLines: 1,
                                                    cursorColor:
                                                        AppColors.primary1,
                                                    decoration: InputDecoration(
                                                      focusColor:
                                                          AppColors.primary1,
                                                    ),
                                                  ),
                                                  Positioned(
                                                    right: 0,
                                                    top: 0,
                                                    bottom: 0,
                                                    child: IconButton(
                                                      icon: SvgPicture.asset(
                                                        "assets/icons/send.svg",
                                                        // ignore: deprecated_member_use
                                                        color:
                                                            AppColors.primary1,
                                                      ),
                                                      onPressed: () {
                                                        // Perform search action here
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )
                                          : const SizedBox()
                                    ],
                                  );
                                },
                              )
                            : const SizedBox(),
                      ],
                    );
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
                child: CardOption(
                  title: "About Center",
                  textColor: AppColors.primary1,
                  icon: "assets/icons/about.svg",
                  iconColor: AppColors.primary1,
                  onPressed: () {},
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
