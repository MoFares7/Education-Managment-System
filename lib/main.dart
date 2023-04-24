import 'package:flutter/material.dart';
import 'package:saeed/view/screens/MainScreen/DetailsCenterScreen/Presintation/main_volunteer_screen.dart';
import 'package:sizer/sizer.dart';

import 'view/screens/MainScreen/AccountScreen/Presintation/settings_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'Education User App',
          theme: ThemeData(),
          debugShowCheckedModeBanner: false,
          home: SettingScreen(),
        );
      },
    );
  }
}
