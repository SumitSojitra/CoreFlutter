import 'dart:math';

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    int a, b, c;
    Random r = Random();
    a = r.nextInt(10);
    b = r.nextInt(10);
    c = r.nextInt(10);

    List<Map> l = [
      {
        'appBarColor': Color(0xff3A1078),
      },
      {
        'appBarColor': Color(0xffF7C8E0),
      },
      {
        'appBarColor': Color(0xff2B3467),
      }
    ];

    Random c1 = Random();
    // l = c1.nextInt(3);

    return Scaffold(
      appBar: AppBar(
        title: Text("Lottery App"),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Icon(Icons.group_work),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Container(
              height: h * 0.3,
              width: w,
              color: Colors.redAccent,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(26),
                    child: Container(
                      height: h * 0.08,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "$a",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(50),
                    child: Container(
                      height: h * 0.08,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "$b",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Container(
                      height: h * 0.08,
                      width: w * 0.2,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "$c",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(
              flex: 2,
            ),
            Container(
              height: h * 0.08,
              width: w * 0.3,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: Colors.lightGreenAccent,
                  width: 3,
                ),
              ),
              alignment: Alignment.center,
              child: InkWell(
                onTap: () {
                  setState(() {});
                },
                child: Text(
                  "Get Lottery",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Spacer(
              flex: 1,
            )
          ],
        ),
      ),
    );
  }
}
