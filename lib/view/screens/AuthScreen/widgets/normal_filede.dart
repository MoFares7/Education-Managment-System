import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:sizer/sizer.dart';

import '../../../configs/them.dart';

class NormalFormEditing extends StatelessWidget {
  const NormalFormEditing(
      {Key? key,
      required this.hintText,
      required this.validator,
      required this.controller,
      required this.keyboardType,
      required this.padding, required this.width})
      : super(key: key);

  final TextEditingController controller;
  final String hintText;
  final FieldValidator validator;
  final TextInputType keyboardType;
  final double padding;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: padding),
      child: SizedBox(
        width: width,
        child: TextFormField(
          controller: controller,
          validator: (value) {
            if (value!.isEmpty) {
              return tr('The field is required');
            }
            if (!RegExp(
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
                .hasMatch(value)) {
              return tr('Enter the correct value');
            } else {
              return null;
            }
          },
          keyboardType: keyboardType,
          autofillHints: const [AutofillHints.email],
          cursorColor: AppColors.primary1,
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColors.textColorWhiteBold,
            hintText: hintText,
            hoverColor: AppColors.primary1,
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
      ),
    );
  }
}

class NameFormEditing extends StatelessWidget {
  const NameFormEditing(
      {Key? key,
      required this.hintText,
      required this.validator,
      required this.controller})
      : super(key: key);

  final TextEditingController controller;

  final String hintText;
  final FieldValidator validator;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2),
      child: TextFormField(
        controller: controller,
        validator: (value) {
          if (value!.isEmpty) {
            return tr('The field is required');
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.name,
        autofillHints: const [AutofillHints.email],
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).primaryColor,
          hintText: hintText,
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
