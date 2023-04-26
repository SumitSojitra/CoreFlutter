import 'dart:async';

import 'package:flutter/material.dart';
import 'package:invoice_generator/views/utils/utils.dart';

class splash_screen extends StatefulWidget {
  const splash_screen({Key? key}) : super(key: key);

  @override
  State<splash_screen> createState() => _splash_screenState();
}

class _splash_screenState extends State<splash_screen> {
  String font = "bBanyu";

  @override
  void initState() {
    Timer(Duration(seconds: 4), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: dark,
        child: Center(
          child: Text(
            "Invoice Generator",
            style: TextStyle(
              fontFamily: font,
              fontSize: 32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
