import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:saeed/view/configs/them.dart';
import 'package:saeed/view/screens/MainScreen/widgets/MainAppBar.dart';
import 'package:sizer/sizer.dart';

class SettingScreen extends StatelessWidget {
  SettingScreen({Key? key}) : super(key: key);

  ValueNotifier<bool> _isDark = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: MainAppBar(
          title: "Setting",
        ),
      ),
      body: SingleChildScrollView(
        child: Card(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
          ),
          child: Column(
            children: [
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.language,
                          color: AppColors.primary1,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('language'.tr()),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    child: DropdownButtonFormField<Locale>(
                      alignment: Alignment.centerRight,
                      decoration: const InputDecoration(
                        fillColor: Colors.transparent,
                        filled: true,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                      ),
                      value: EasyLocalization.of(context)?.locale,
                      onChanged: (newLanguage) async {
                        if (newLanguage != null) {
                          context.setLocale(newLanguage);
                        }
                      },
                      items: const [
                        DropdownMenuItem(
                          child: Text('Arabic'),
                          value: Locale('ar'),
                        ),
                        DropdownMenuItem(
                          child: Text('English'),
                          value: Locale('en'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.w),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.brightness_2,
                          color: AppColors.primary1,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text('Dark Mode'.tr()),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      ValueListenableBuilder(
                        valueListenable: _isDark,
                        builder: (context, value, child) {
                          return Switch.adaptive(
                              activeColor: AppColors.primary1,
                              value: _isDark.value,
                              onChanged: (newValue) {
                                _isDark.value = !_isDark.value;
                              });
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
