import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
          centerTitle: true,
          backgroundColor: Colors.red,
          elevation: 4,
          leading: Icon(Icons.menu),
        ),
        body: Center(
          child: Text(
              "      Red & White Group of Institutes\n One Step in Changing Education Chain",
              style: TextStyle(color: Colors.red, fontSize: 20)),
        ),
      ),
    ),
  );
}
