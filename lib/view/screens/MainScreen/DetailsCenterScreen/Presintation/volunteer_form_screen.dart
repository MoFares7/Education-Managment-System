// ignore_for_file: non_constant_identifier_names, must_be_immutable
import 'dart:io';
import 'package:easy_localization/easy_localization.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/AuthScreen/widgets/main_button.dart';
import 'package:saeed/view/screens/MainScreen/DetailsCenterScreen/Presintation/details_volunteer_screen.dart';
import 'package:saeed/view/screens/MainScreen/widgets/MainAppBar.dart';
import 'package:sizer/sizer.dart';

class VolunteerFormScreen extends StatelessWidget {
  VolunteerFormScreen({super.key});

  final TextEditingController _email_Vol_Controller = TextEditingController();
  final TextEditingController _first_Name_Vol_Controller =
      TextEditingController();
  final TextEditingController _last_Name_Vol_Controller =
      TextEditingController();
  final TextEditingController _phone_Number_Vol_Controller =
      TextEditingController();
  final TextEditingController _univarsity_Vol_controller =
      TextEditingController();
  final TextEditingController _experince_Vol_Controller =
      TextEditingController();
  final ValueNotifier<File?> certificateFileNotifier =
      ValueNotifier<File?>(null);
  final ValueNotifier<DateTime> datePickerNotifier =
      ValueNotifier<DateTime>(DateTime(2001, 1, 1));

  final formKey = GlobalKey<FormState>();

  String date = "";

  DateTime now = DateTime.now();

  Future<DateTime?> selectDateDialog(
    BuildContext context, [
    DateTime? initialDate,
  ]) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: AppColors.primary1, // header background color
                onPrimary: Colors.white, // header text color
                onSurface: Theme.of(context)
                    .hoverColor
                    .withOpacity(0.5), // body text color
              ),
            ),
            child: child!,
          );
        },
        initialDate: initialDate ?? DateTime(2000),
        firstDate: DateTime(1940),
        // subtract 3 years from current year to prevent user from selecting near date
        lastDate: DateTime(2008, 12, 31));
    if (picked != null) {
      datePickerNotifier.value = picked;
    }
    return initialDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackgroundColor,
        resizeToAvoidBottomInset: false,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: MainAppBar(title: "Teacher Information"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 2.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Form(
              key: formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormVolunteer(
                      hintText: 'first_name'.tr(),
                      controller: _first_Name_Vol_Controller,
                      inputType: TextInputType.name,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: tr('The field is required')),
                        EmailValidator(errorText: 'Enter Valid First Name')
                      ]),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    TextFormVolunteer(
                      hintText: 'last_name'.tr(),
                      controller: _last_Name_Vol_Controller,
                      inputType: TextInputType.name,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: tr('The field is required')),
                        EmailValidator(errorText: 'Enter Valid Last Name')
                      ]),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    TextFormVolunteer(
                      hintText: 'phone_number'.tr(),
                      controller: _phone_Number_Vol_Controller,
                      inputType: TextInputType.phone,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: tr('The field is required')),
                        EmailValidator(errorText: 'Enter Valid Phone Number')
                      ]),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    TextFormVolunteer(
                      hintText: 'email'.tr(),
                      controller: _email_Vol_Controller,
                      inputType: TextInputType.emailAddress,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: tr('The field is required')),
                        EmailValidator(errorText: 'Enter Valid Email')
                      ]),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    TextFormVolunteer(
                      hintText: tr('Undergraduate degree'),
                      controller: _univarsity_Vol_controller,
                      inputType: TextInputType.emailAddress,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: tr('The field is required')),
                        EmailValidator(errorText: 'Enter Valid Email')
                      ]),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    TextFormVolunteer(
                      hintText: tr('Years of Experience'),
                      controller: _experince_Vol_Controller,
                      inputType: TextInputType.number,
                      validator: MultiValidator([
                        RequiredValidator(
                            errorText: tr('The field is required')),
                        MaxLengthValidator(2, errorText: ' can not more 2'),
                        EmailValidator(errorText: 'Enter Valid exp_years'),
                      ]),
                    ),
                    SizedBox(
                      height: 2.5.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ValueListenableBuilder(
                            valueListenable: datePickerNotifier,
                            builder: (context, value, child) {
                              return Expanded(
                                child: Text(
                                    '${datePickerNotifier.value.day}/${datePickerNotifier.value.month}/${datePickerNotifier.value.year}'),
                              );
                            },
                          ),
                          Expanded(
                            child: MainButton(
                              height: 5.h,
                              width: double.infinity,
                              titleButton: tr('Date of Birth'),
                              fontSize: 9.sp, color: AppColors.primary1,
                              onClickNext: () async {
                                selectDateDialog(context);
                              },
                              //    height: 20,
                              //  minWidth: 20,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              tr('Undergraduate degree'),
                              style: TextStyle(
                                fontSize: 9.sp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: MainButton(
                              height: 5.h,
                              width: double.infinity,
                              titleButton: tr('Choose the file'),
                              fontSize: 9.sp,
                              color: AppColors.primary1,
                              onClickNext: () async {
                                final result = await FilePicker.platform
                                    .pickFiles(
                                        type: FileType.custom,
                                        allowedExtensions: ['pdf']);
                                if (result == null) {
                                  return;
                                }
                                // Open Single file
                                final file = result.files.first;
                                //   openFile(file);
                                final File certificateFile = File(file.path!);
                                certificateFileNotifier.value = certificateFile;
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: MainButton(
                        titleButton: tr('volunteer now'),
                        width: double.infinity,
                        height: 7.h,
                        fontSize: 11.sp,
                        color: AppColors.primary1,
                        onClickNext: () {
                          if (formKey.currentState!.validate() &&
                              certificateFileNotifier.value != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailsVolunteer(),
                              ),
                            );
                            
                          }
                        },
                      ),
                    ),
                     SizedBox(
                      height: 1.h,
                    ),
                  ]),
            ),
          ),
        ));
  }
}

class TextFormVolunteer extends StatelessWidget {
  const TextFormVolunteer({
    Key? key,
    required this.hintText,
    required this.validator,
    required this.controller,
    required this.inputType,
  }) : super(key: key);

  final String hintText;
  final FieldValidator validator;
  final TextEditingController controller;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5.w),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return tr('The field is required');
          }
          return null;
        },
        controller: controller,
        keyboardType: inputType,
        autofillHints: const [AutofillHints.email],
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey, // <-- Change this
            fontSize: 9.sp,
            fontWeight: FontWeight.w400,
            // fontStyle: FontStyle.normal,
          ),
        ),
      ),
    );
  }
}
