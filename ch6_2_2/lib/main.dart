import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dark Shadow Button"),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Align(
          child: Container(
            height: 100,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(width: 2, color: Colors.red),
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    spreadRadius: 5,
                    blurRadius: 40,
                    color: Colors.red,
                  )
                ]),
            alignment: Alignment.center,
            child: Text(
              "Tap",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
