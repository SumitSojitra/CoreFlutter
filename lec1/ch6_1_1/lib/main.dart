import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          backgroundColor: Colors.lightGreen.shade500,
          elevation: 4,
        ),
        body: Align(
          child: Container(
              height: 300,
              width: 300,
              alignment: Alignment.center,
              color: Colors.green,
              child: Container(
                height: 250,
                width: 250,
                color: Colors.lightGreenAccent,
                alignment: Alignment.center,
                child: Text(
                  "oooo",
                  style: TextStyle(
                      fontSize: 130,
                      letterSpacing: -40,
                      color: Colors.black.withOpacity(0.7)),
                ),
              )),
        ),
        backgroundColor: Colors.lightGreen.shade500,
      ),
    ),
  );
}
