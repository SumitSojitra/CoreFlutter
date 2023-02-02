import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      // appBar: AppBar(),
      body: Align(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow.shade800,
          ),
          alignment: Alignment.topCenter,
          child: Container(
            height: 300,
            width: 260,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            alignment: Alignment.topCenter,
            child: Container(
              height: 258,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow.shade800,
              ),
              alignment: Alignment(-0.6, 0),
              child: Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                alignment: Alignment(210, 0),
                child: Container(
                  height: 79,
                  width: 79,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 90,
        decoration: BoxDecoration(
          color: Colors.yellow.shade800,
        ),
        alignment: Alignment.center,
        child: Text(
          "Emoji",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    ),
  ));
}
