import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Letter Cover"),
          centerTitle: true,
          backgroundColor: Colors.green,
        ),
        body: Align(
          child: Container(
            height: 250,
            width: 250,
            // color: Colors.green,
            decoration: BoxDecoration(
              color: Colors.green,
              border: Border.symmetric(
                  horizontal:
                      BorderSide(width: 110, color: Colors.green.shade300),
                  vertical: BorderSide(width: 110, color: Colors.green)),
            ),
          ),
        ),
      ),
    ),
  );
}
