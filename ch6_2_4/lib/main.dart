import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Gradient Button"),
          centerTitle: true,
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Align(
          child: Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent,
                  Colors.purple,
                  Colors.blue.shade800,
                  Colors.lightBlue,
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                stops: [-1, -0.4, 0.4, 1],
              ),
              border: Border.all(width: 2, color: Colors.white),
              borderRadius: BorderRadius.circular(44),
            ),
            alignment: Alignment.center,
            child: Text(
              "Flutter",
              style: TextStyle(fontSize: 30, color: Colors.white),
            ),
          ),
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
    ),
  );
}
