import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Opened Doors"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Align(
          child: Container(
            height: 250,
            width: 230,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                    horizontal: BorderSide(width: 50, color: Colors.black),
                    vertical: BorderSide(width: 70, color: Colors.white70))),
          ),
        ),
      ),
    ),
  );
}
