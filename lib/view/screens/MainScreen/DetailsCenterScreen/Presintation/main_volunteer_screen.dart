import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/CentersScreen/widgets/sort_button.dart';
import 'package:saeed/view/screens/MainScreen/DetailsCenterScreen/widgets/volunteer_card.dart';
import 'package:saeed/view/widgets/search_field.dart';
import 'package:sizer/sizer.dart';

class MainVolunteerScreen extends StatelessWidget {
  const MainVolunteerScreen({super.key});

  //final ValueNotifier<bool> _isStudent = ValueNotifier<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.scaffoldBackgroundColor,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 5.w),
            child: SearchField(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SortButton(
                title: "Student",
                onPressed: () {},
              ),
              SortButton(
                title: "Teacher",
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return Column(
                  children: const [
                    VolunteerCard(),
                    VolunteerCard(),
                    VolunteerCard(),
                    VolunteerCard(),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
