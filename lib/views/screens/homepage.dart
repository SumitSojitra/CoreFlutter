import 'dart:html';

import 'package:exam_1/views/utils/utils.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  double myvalue = 0;
  String income = "1000";
  int balance = 0;
  String Expanses = "500";

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    String data = ModalRoute.of(context)!.settings.arguments as String;
    String data1 = ModalRoute.of(context)!.settings.arguments as String;
    // income = data1;
    // Expanses = data.toString();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Budget Tracker",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Colors.blue,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "Balance",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              "$balance",
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
            child: Text(
              "Income : $income",
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                child: Text(
                  "Expanses : $Expanses",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      balance = int.parse(income!) - int.parse(Expanses!);
                    });
                  },
                  child: Container(
                    height: h * 0.06,
                    width: w * 0.2,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Balance",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: TextField(
          //     style: TextStyle(color: Colors.white),
          //     onChanged: (val) => income = val,
          //     decoration: InputDecoration(
          //         hintText: "Enter Your Income",
          //         hintStyle: TextStyle(color: Colors.white),
          //         border: OutlineInputBorder(),
          //         enabledBorder: OutlineInputBorder(
          //             borderSide: BorderSide(
          //           color: Colors.white,
          //         )),
          //         focusedBorder: OutlineInputBorder(
          //             borderSide: BorderSide(
          //           color: Colors.white,
          //         ))),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(16),
          //   child: TextField(
          //     style: TextStyle(color: Colors.white),
          //     onChanged: (val) => Expanses = val,
          //     decoration: InputDecoration(
          //       hintText: "Enter Your Expanses",
          //       hintStyle: TextStyle(color: Colors.white),
          //       enabledBorder: OutlineInputBorder(
          //           borderSide: BorderSide(
          //         color: Colors.white,
          //       )),
          //       focusedBorder: OutlineInputBorder(
          //           borderSide: BorderSide(
          //         color: Colors.white,
          //       )),
          //       border: OutlineInputBorder(),
          //     ),
          //   ),
          // ),
          Spacer(),
          Container(
            height: h * 0.67,
            width: w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(12), left: Radius.circular(12))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/');
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add),
      ),
    );
  }
}
