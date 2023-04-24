
import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/CentersScreen/widgets/sort_options.dart';
import 'package:saeed/view/screens/MainScreen/widgets/card_center.dart';
import 'package:saeed/view/widgets/search_field.dart';
import 'package:sizer/sizer.dart';

class CentersScreen extends StatelessWidget {
  const CentersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 7.w),
          child: Column(
            children: [
              SearchField(),
              SizedBox(
                height: 2.h,
              ),
              SortOptions(),
              SizedBox(
                height: 4.h,
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
                  },
                ),
              ),
            ],
          ),
        ));
  }
}
