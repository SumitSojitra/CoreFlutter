import 'dart:math';

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int d1 = 1;
  int d2 = 1;

  @override
  Widget build(BuildContext context) {
    Random r = Random();

    d1 = r.nextInt(6) + 1;
    d2 = r.nextInt(6) + 1;
    int sum = d1 + d2;

    return Scaffold(
        body: Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/Background.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Column(
            children: [
              Spacer(),
              Text("Total Amount :$sum"),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    flex: 25,
                    child: Image.asset(
                      "assets/images/$d1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Spacer(),
                  Expanded(
                    flex: 25,
                    child: Image.asset(
                      "assets/images/$d2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  setState(() {});
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset("assets/images/Button.png"),
                    Text(
                      "Roll Dice",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 28),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }
}
