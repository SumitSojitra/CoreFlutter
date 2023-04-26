import 'dart:async';

import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacementNamed('/');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 230),
            Text(
              "Contact Dairy",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                  color: Colors.white),
            ),
            SizedBox(height: 140),
            CircularProgressIndicator(),
            SizedBox(height: 200),
          ],
        ),
      ),
    );
  }
}
