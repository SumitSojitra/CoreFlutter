import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Mission Of RNW"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Align(
        child: Container(
          height: 110,
          width: 300,
          decoration: BoxDecoration(
              color: Colors.red.shade200,
              border: Border(
                  left: BorderSide(
                color: Colors.red,
                width: 12,
              ))),
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "Shaping ''skills'' for ''scaling'' higher\n",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 17,
                  )),
              TextSpan(
                  text: "- RNW",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                  ))
            ]),
          ),
        ),
      ),
    ),
  ));
}
