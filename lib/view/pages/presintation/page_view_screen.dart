import 'package:flutter/material.dart';
import 'package:saeed/view/screens/HomeScreen/Presintation/home_screen.dart';
import 'package:sizer/sizer.dart';

import '../../configs/them.dart';
import '../widget/nextSlideButton.dart';
import '../widget/slideIndicator.dart';
import '../widget/slideView.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({Key? key}) : super(key: key);

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  PageController? _pageController;

  onClickNext() {
    if (_pageController!.hasClients) {
      if (_pageController!.page! < 3) {
        _pageController!.nextPage(
            duration: const Duration(milliseconds: 500),
            curve: Curves.bounceInOut);
        print(_pageController!.hasClients);
      } else {
        if (_pageController!.page! == 3) {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
      }
    }
  }

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primary1,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.w, vertical: 0.1.h),
        child: Align(
          child: Stack(
            children: [
              SlideView(controller: _pageController!),
              Positioned(
                  bottom: 13.h,
                  right: 1.w,
                  left: 1.w,
                  child: SlideIndicator(
                    dotIndex: _pageController!.hasClients
                        ? _pageController!.page!
                        : 0,
                  )),
              Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    NextSlideButton(
                      onClickNext: () {
                        onClickNext();
                      },
                      width: 35.w,
                      titleButton: _pageController!.hasClients
                          ? _pageController!.page != 2
                              ? 'Next'
                              : 'Get Started'
                          : 'Next',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomeScreen()));
                        },
                        child: Container(
                          padding: const EdgeInsets.only(
                            bottom: 2, // Space between underline and text
                          ),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                            color: AppColors.textColorBlackRegular,
                            width: 1.0, // Underline thickness
                          ))),
                          child: Text(
                            'skip',
                            style: TextStyle(
                              fontSize: 11.sp,
                              color: AppColors.textColorBlackRegular,
                              //decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
