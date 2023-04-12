import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Stack App",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.purple,
              alignment: Alignment.topLeft,
              child: Text(
                "Purple",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 40,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.indigo,
              alignment: Alignment.topLeft,
              child: Text(
                "Indigo",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 60,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.lightBlue,
              alignment: Alignment.topLeft,
              child: Text(
                "light blue",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 80,
            left: 80,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.green,
              alignment: Alignment.topLeft,
              child: Text(
                "green",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 100,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.amber,
              alignment: Alignment.topLeft,
              child: Text(
                "amber",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 120,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.orange,
              alignment: Alignment.topLeft,
              child: Text(
                "orange",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 140,
            left: 140,
            child: Container(
              height: 130,
              width: 130,
              color: Colors.redAccent,
              alignment: Alignment.topLeft,
              child: Text(
                "red accent",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
