import 'package:flutter/material.dart';
import 'package:saeed/view/pages/presintation/page_view_screen.dart';
import 'package:saeed/view/screens/AuthScreen/SignUpScreen/opt_validate_screen.dart';
import 'package:saeed/view/screens/MainScreen/HomeScreen/Presintation/home_screen.dart';
import 'package:sizer/sizer.dart';

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
          home: PageViewScreen(),
        );
      },
    );
  }
}
