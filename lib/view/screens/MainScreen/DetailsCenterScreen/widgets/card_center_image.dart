// ignore: must_be_immutable
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CardCenterImage extends StatelessWidget {
  CardCenterImage({super.key, required this.src});
  String src;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20.h,
      width: 30.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Image.network(src),
    );
  }
}
