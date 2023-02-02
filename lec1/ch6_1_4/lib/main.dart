import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Mashal"),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: Align(
          child: Container(
            height: 200,
            width: 160,
            // color: Colors.brown,
            decoration: BoxDecoration(
                color: Colors.brown,
                border: Border.symmetric(
                  horizontal:
                      BorderSide(width: 30, color: Colors.brown.shade400),
                  vertical: BorderSide(width: 50, color: Colors.white),
                )),
            alignment: Alignment(0, -3.1),
            child: Text(
              "🔥",
              style: TextStyle(
                fontSize: 50,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
