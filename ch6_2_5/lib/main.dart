import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("An Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 300,
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.white,
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.deepOrange,
                  Colors.white,
                  Colors.white,
                  Colors.green,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            alignment: Alignment.center,
            child: Text(
              "✳️",
              style: TextStyle(fontSize: 50, color: Colors.blue),
            ),
          ),
        ),
        backgroundColor: Colors.blue,
      ),
    ),
  );
}
