import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("3D Cube"),
          centerTitle: true,
          backgroundColor: Colors.cyan.shade800,
        ),
        body: Align(
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
              color: Colors.cyan.shade800,
              border: Border.symmetric(
                horizontal: BorderSide(width: 40, color: Colors.cyan.shade400),
                vertical: BorderSide(width: 40, color: Colors.cyan.shade600),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
