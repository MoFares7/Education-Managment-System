import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/them.dart';

class PasswordFormFiled extends StatefulWidget {
  const PasswordFormFiled(
      {Key? key,
      required this.hintText,
      required this.controller,
      required this.icon,
      required this.validator})
      : super(key: key);

  final String hintText;
  final TextEditingController controller;
  final IconData icon;
  final FieldValidator validator;

  @override
  State<PasswordFormFiled> createState() => _PasswordFormFiledState();
}

bool _isPasswordVision = true;

class _PasswordFormFiledState extends State<PasswordFormFiled> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 7.w),
      child: TextFormField(
        controller: widget.controller,
        obscureText: _isPasswordVision,
        validator: (value) {
          if (value!.isEmpty) {
            return tr('The field is required');
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        autofillHints: const [AutofillHints.email],
        cursorColor: AppColors.primary1,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppColors.textColorWhiteBold,
          suffixIcon: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: IconButton(
              icon: Icon(
                _isPasswordVision ? Icons.visibility : Icons.visibility_off,
                size: 22,
                color: AppColors.textDark.withOpacity(0.6),
              ),
              onPressed: () {
                setState(() {
                  _isPasswordVision = !_isPasswordVision;
                });
              },
            ),
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: Colors.grey, // <-- Change this
            fontSize: 8.sp,
            fontWeight: FontWeight.w400,
            // fontStyle: FontStyle.normal,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            //  borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: AppColors.primary1),
          ),
        ),
      ),
    );
  }
}
