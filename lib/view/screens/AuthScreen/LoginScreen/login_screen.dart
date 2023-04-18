import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/email_filed.dart';
import 'package:sizer/sizer.dart';

import '../widgets/main_button.dart';
import '../widgets/password_filed.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
                              'assets/icons/login.svg',
                              width: 200,
                              height: 150,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Login in our Platform",
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
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20),
                              child: Text(
                                'Email'.tr(),
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            EmailFormEditing(
                              hintText: "myEmail@domain.com",
                              controller: _emailController,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: tr('The field is required')),
                                EmailValidator(
                                    errorText:
                                        '  ادخل البريد الإلكتروني الصحيح')
                              ]),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20 * 2),
                              child: Text(
                                'Password'.tr(),
                                style: TextStyle(
                                  fontSize: 10.sp,
                                  // fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            PasswordFormFiled(
                                hintText: "myEmail@domain.com",
                                controller: _emailController,
                                validator: MultiValidator(
                                  [
                                    RequiredValidator(
                                        errorText: tr('The field is required')),
                                    MaxLengthValidator(
                                      15,
                                      errorText: 'لا يمكن إدخال أكثر من 15 حرف',
                                    ),
                                    MinLengthValidator(
                                      7,
                                      errorText: 'لا يمكن إدخال أقل من 7 حرف',
                                    ),
                                    EmailValidator(
                                      errorText: '  ادخل  كلمة المرور الصحيح',
                                    )
                                  ],
                                ),
                                icon: Icons.lock),
                            Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MainButton(
                                    height: 7.h,
                                    width: 50.w,
                                    titleButton: "Login",
                                    onClickNext: () {},
                                  ),
                                  MainButton(
                                    height: 7.h,
                                    width: 50.w,
                                    titleButton: "Login as Guest",
                                    onClickNext: () {},
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "don't have account".tr(),
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Create account'.tr(),
                                          style: TextStyle(
                                              fontSize: 7.sp,
                                              fontWeight: FontWeight.bold,
                                              color: Theme.of(context)
                                                  .iconTheme
                                                  .color),
                                        ),
                                      ),
                                    ],
                                  ),
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
