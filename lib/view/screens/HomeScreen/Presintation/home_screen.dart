import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _carouselItems = [
    Container(
      color: Colors.blue,
      child: const Center(
        child: Text('Slide 1'),
      ),
    ),
    Container(
      color: Colors.green,
      child: const Center(
        child: Text('Slide 2'),
      ),
    ),
    Container(
      color: Colors.red,
      child: const Center(
        child: Text('Slide 3'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children: [
CarouselSlider(
  items: _carouselItems,
  options: CarouselOptions(
    height: 200,
    enlargeCenterPage: true,
    autoPlay: true,
    autoPlayInterval: const Duration(seconds: 2),
    autoPlayAnimationDuration: const Duration(milliseconds: 800),
    autoPlayCurve: Curves.fastOutSlowIn,
  ),
),

          const Center(
            child: Text('This is the home screen.'),
          ),
        ],
      ),
    );
  }
}
