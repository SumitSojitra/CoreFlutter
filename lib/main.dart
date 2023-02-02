import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter App",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellow.shade800,
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Text(
            "Red & White",
            style: TextStyle(
                decoration: TextDecoration.underline,
                decorationColor: Colors.yellow,
                decorationStyle: TextDecorationStyle.double,
                color: Colors.red,
                fontSize: 50),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
