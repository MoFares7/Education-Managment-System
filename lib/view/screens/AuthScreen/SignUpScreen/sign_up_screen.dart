import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/main_button.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/normal_filede.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/password_filed.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/email_filed.dart';
import 'package:sizer/sizer.dart';
import '../../../configs/them.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _fNameController = TextEditingController();
  final TextEditingController _lNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

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
                            NormalFormEditing(
                              hintText: "First Name",
                              controller: _fNameController,
                              keyboardType: TextInputType.name,
                              width: 80.w,
                              padding: 7.w,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: tr('The field is required')),
                                EmailValidator(errorText: '  ادخل الاسم الصحيح')
                              ]),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            NormalFormEditing(
                              hintText: "Last Name",
                              controller: _lNameController,
                              keyboardType: TextInputType.name,
                              width: 80.w,
                              padding: 7.w,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: tr('The field is required')),
                              ]),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            EmailFormEditing(
                              hintText: "myEmail@domain.com",
                              controller: _emailController,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: tr('The field is required')),
                              ]),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            PasswordFormFiled(
                                hintText: "Password",
                                controller: _passwordController,
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
                                  ],
                                ),
                                icon: Icons.lock),
                            SizedBox(
                              height: 3.h,
                            ),
                            NormalFormEditing(
                              hintText: "City",
                              controller: _cityController,
                              keyboardType: TextInputType.name,
                              width: 80.w,
                              padding: 7.w,
                              validator: MultiValidator([
                                RequiredValidator(
                                    errorText: tr('The field is required')),
                              ]),
                            ),
                            SizedBox(
                              height: 3.h,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 3.w,
                                ),
                                Image.asset(
                                  "assets/images/sy.png",
                                  height: 5.h,
                                  width: 6.w,
                                ),
                                SizedBox(
                                  width: 3.w,
                                ),
                                Text(
                                  "+963",
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                                NormalFormEditing(
                                  hintText: "Phone Number",
                                  controller: _phoneNumberController,
                                  keyboardType: TextInputType.name,
                                  width: 60.w,
                                  padding: 5.w,
                                  validator: MultiValidator([
                                    RequiredValidator(
                                        errorText: tr('The field is required')),
                                  ]),
                                ),
                              ],
                            ),
                            Center(
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  MainButton(
                                    height: 7.h,
                                    width: 50.w,
                                    titleButton: "Sign Up",
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
                                        " have an account".tr(),
                                        style: TextStyle(
                                          fontSize: 7.sp,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Login'.tr(),
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
