import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Red & White"),
          centerTitle: true,
          backgroundColor: Colors.red,
          titleTextStyle: TextStyle(
            letterSpacing: 2.3,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        body: Center(
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: "           G",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "R",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                  )),
              TextSpan(
                  text: "APHICS\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "   FLUTT",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.1,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "E",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "R\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "         AN",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "D",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "ROID\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "DESIGN ",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "& ",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "DEVELOP\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "           W",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "EB\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "       FAS",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "H",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "ION\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellowAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "ANIMAT",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "I",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "ON\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.lightBlueAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  )),
              TextSpan(
                  text: "            I",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "T",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "A-CS+\n",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  )),
              TextSpan(
                  text: "     GAM",
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.yellow,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                    height: 1.5,
                  )),
              TextSpan(
                  text: "E",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ))
            ]),
          ),
        ),
        backgroundColor: Colors.black,
      ),
    ),
  );
}
