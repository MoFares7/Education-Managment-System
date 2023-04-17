import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:saeed/view/pages/widget/itemSlidView.dart';

class SlideView extends StatelessWidget {
  final PageController? controller;
  const SlideView({Key? key,  this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: const [
        ItemSlideView(
            image: "assets/images/slide1.png",
            title: ('Add  account by personal or center to help you'),
            description: "to more improve and creativity join to or family"),
        ItemSlideView(
            image: "assets/images/slide2.png",
            title: ('  you will become more effective in Social and very regular in same time'),
            description: "every thing to change to better Let's go"),
        ItemSlideView(
            image: "assets/images/slide3.png",
            title: ('Discover your next step to Help your to take anything you want'),
            description: "Discover the thing you want to get it and grow with them"),
      ],
    );
  }
}
