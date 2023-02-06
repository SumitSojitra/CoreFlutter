import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.cyan.shade900,
        ),
        body: Align(
          child: Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 2, color: Colors.cyan.shade900),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 4,
                      blurRadius: 30,
                      color: Colors.cyan.shade800),
                ],
                borderRadius: BorderRadius.circular(25)),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
