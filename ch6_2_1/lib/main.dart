import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Launch Button"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
                border: Border.all(
                  width: 1,
                  color: Colors.white,
                ),
                boxShadow: [
                  BoxShadow(
                      spreadRadius: 10, blurRadius: 10, color: Colors.green)
                ]),
            alignment: Alignment.center,
            child: Text(
              "GO",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
