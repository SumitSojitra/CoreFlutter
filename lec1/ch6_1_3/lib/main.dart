import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Mix-up"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 5,
      ),
      body: Align(
        child: Container(
          height: 356,
          width: 356,
          color: Colors.blue,
          alignment: Alignment.bottomRight,
          child: Container(
            height: 310,
            width: 300,
            color: Colors.yellow,
            alignment: Alignment.bottomRight,
            child: Container(
              height: 266,
              width: 267,
              color: Colors.pink,
              alignment: Alignment.topLeft,
              child: Container(
                height: 225,
                width: 225,
                color: Colors.orange,
                alignment: Alignment.topLeft,
                child: Container(
                  height: 180,
                  width: 180,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: Container(
                    height: 130,
                    width: 130,
                    color: Colors.lightBlueAccent.shade100,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  ));
}
