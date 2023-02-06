import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Watch"),
          backgroundColor: Color(0xff2c3e50),
        ),
        body: Align(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff2c3e50),
                  Color(0xff3498db),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            alignment: Alignment.center,
            child: Container(
              height: 80,
              width: 250,
              decoration: BoxDecoration(
                // border: Border.all(width: 1,color: ),
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff0088cc),
              ),
              alignment: Alignment.center,
              child: Text(
                "Flutter",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
