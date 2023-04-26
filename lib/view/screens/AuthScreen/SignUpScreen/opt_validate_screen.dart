import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/main_button.dart';
import 'package:sizer/sizer.dart';

import '../../MainScreen/MainScreen.dart';

class OtpVaildationScreen extends StatelessWidget {
  OtpVaildationScreen({super.key});
  final String requiredNumber = '123456';
  final TextEditingController optController = TextEditingController();
  final ValueNotifier<String?> _selectedValue = ValueNotifier<String?>(null);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.primary1,
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Mask.png',
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.h),
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      child: Column(
                        children: [
                          AspectRatio(
                            aspectRatio: 7 / 2,
                            child: SvgPicture.asset(
                              'assets/icons/signUp.svg',
                              width: 200,
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Sign up in our Platform",
                            style: TextStyle(
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold,
                                color: AppColors.textColorWhiteBold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 4.w, vertical: 1.h),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                        color: AppColors.textColorWhiteBold,
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 3.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 2.w),
                              child: Column(
                                children: [
                                  Text(
                                    "The code has been sent to you from email",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        color: AppColors.textColorBlackBold),
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  ValueListenableBuilder(
                                    valueListenable: _selectedValue,
                                    builder: (context, value, Widget? child) {
                                      return PinCodeTextField(
                                        controller: optController,
                                        appContext: context,
                                        validator: (value) => value == null
                                            ? tr('The field is required')
                                            : null,
                                        autovalidateMode:
                                            AutovalidateMode.onUserInteraction,
                                        animationCurve: Curves.linear,
                                        animationDuration:
                                            const Duration(milliseconds: 0),
                                        length: 6,
                                        keyboardType: TextInputType.number,
                                        onChanged: (String value) {
                                          if (value.length < 6) {
                                            _selectedValue.value = value;
                                          }
                                        },
                                        pinTheme: PinTheme(
                                          shape: PinCodeFieldShape.box,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          fieldHeight: 9.h,
                                          fieldWidth: 13.w,
                                          inactiveColor: AppColors.primary1,
                                          activeColor: value != null
                                              ? AppColors.accent
                                              : AppColors.primary1,
                                          selectedColor: AppColors.primary1,
                                        ),
                                        onCompleted: (value) {
                                          if (value == requiredNumber) {
                                        
                                            Navigator.pushReplacement(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const MainScreen()));
                                          } else {
                                            _selectedValue.value != value;
                                          }
                                        },
                                      );
                                    },
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Please insert the code that you recived if you don't get the code you cane make to",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 8.sp,
                                        color: AppColors.textColorBlackBold,
                                        fontWeight: FontWeight.w300),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MainButton(
                                      height: 7.h,
                                      width: 50.w,
                                      fontSize: 11.sp,
                                      color: AppColors.primary1,
                                      titleButton: "Resend Code",
                                      onClickNext: () {}),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
