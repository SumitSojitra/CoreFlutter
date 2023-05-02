import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool pm = true;

  int sec = DateTime.now().second;
  int min = DateTime.now().minute;
  int hour = DateTime.now().hour;

  double secAngel = 0;
  double minAngel = 0;
  double hourAngel = 0;
  start() {
    setState(() {
      Future.delayed(Duration(seconds: 1), () {
        sec++;
        if (hour > 12) {
          hour -= 12;
          pm != true;
        }
        if (min > 59) {
          hour++;
          min = 0;
        }
        if (sec > 59) {
          min++;
          sec = 0;
        }
        secAngel = (pi / 30) * DateTime.now().second;
        minAngel = (pi / 30) * DateTime.now().minute;
        hourAngel = (pi / 6 * DateTime.now().hour);

        start();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    start();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Digi Clock"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            alignment: Alignment(0, 0),
            child: Text(
              "${hour} : ${min} : ${sec}",
              style: const TextStyle(fontSize: 30),
            ),
          ),
          (pm)
              ? Container(
                  alignment: Alignment(0, 0.08),
                  child: Text("AM", style: TextStyle(fontSize: 20)))
              : Container(
                  alignment: Alignment(0, 0.08),
                  child: Text("PM", style: TextStyle(fontSize: 20))),
          Container(
            alignment: Alignment(0, 0),
            child: Container(
              height: 240,
              width: 240,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                color: Colors.red,
                value: sec.toDouble() / 60,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, 0),
            child: Container(
              height: 220,
              width: 220,
              child: CircularProgressIndicator(
                color: Colors.green,
                value: min.toDouble() / 60,
                strokeWidth: 10,
              ),
            ),
          ),
          Container(
            alignment: Alignment(0, 0),
            child: Container(
              height: 200,
              width: 200,
              child: CircularProgressIndicator(
                strokeWidth: 10,
                color: Colors.purple,
                value: hour.toDouble() / 12,
              ),
            ),
          ),
          //second
          Transform.rotate(
            angle: secAngel,
            child: Container(
              child: Container(
                height: 128,
                width: 2,
                color: Colors.red,
              ),
              alignment: Alignment(0, -0.2),
            ),
          ),
          //minute
          Transform.rotate(
            angle: minAngel,
            child: Container(
              child: Container(
                height: 120,
                width: 2,
                color: Colors.green,
              ),
              alignment: Alignment(0, -0.18),
            ),
          ),
          //hour
          Transform.rotate(
            angle: hourAngel,
            child: Container(
              child: Container(
                height: 112,
                width: 2,
                color: Colors.purple,
              ),
              alignment: Alignment(0, -0.16),
            ),
          )
        ],
      ),
    );
  }
}
