// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class CentersScreen extends StatefulWidget {
  const CentersScreen({Key? key}) : super(key: key);

  @override
  _CentersScreenState createState() => _CentersScreenState();
}

class _CentersScreenState extends State<CentersScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('This is the Centers screen.'),
      ),
    );
  }
}
