import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:saeed/view/model/constants.dart';
import 'package:saeed/view/screens/MainScreen/widgets/card_center.dart';
import 'package:saeed/view/widgets/search_field.dart';
import 'package:sizer/sizer.dart';

import '../../../../configs/them.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 7.w),
        child: Column(
          children: [
            CarouselSlider(
              items: carouselItems,
              options: CarouselOptions(
                height: 30.h,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 2),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastLinearToSlowEaseIn,
              ),
            ),
            SizedBox(
              height: 3.h,
            ),
            Center(
              child: SearchField(),
            ),
            SizedBox(
              height: 3.h,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        CenterCard(
                          centerType: "Free",
                          centerName: "Sanad Team",
                          centerCity: "Damascus",
                          centerImage: "assets/images/sanad.png",
                          centerRating: 4,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        CenterCard(
                          centerType: "Paid",
                          centerName: "Shuhub",
                          centerCity: "Damascus",
                          centerImage: "assets/images/sh.jpg",
                          centerRating: 2,
                        ),
                        SizedBox(
                          height: 3.h,
                        ),
                        CenterCard(
                          centerType: "Free",
                          centerName: "Oussos",
                          centerCity: "Damascus",
                          centerImage: "assets/images/oussos.jpg",
                          centerRating: 0,
                        ),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
