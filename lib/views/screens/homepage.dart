import 'dart:math';

import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int time = 9;
  int i = 1;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double w = s.width;
    double h = s.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("To-Do App"),
        centerTitle: true,
        backgroundColor: Colors.red,
        actions: [
          Icon(Icons.menu),
          SizedBox(
            width: 15,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
              children: List.generate(
            i,
            (index) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: h * 0.08,
                    width: w * 0.20,
                    margin: EdgeInsets.fromLTRB(0, 0, 10, 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey),
                      // color: Colors.red,
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "${(time + index < 13) ? index + time : (index + time) - 12}:00\n ${time + index < 13 ? "PM" : "AM"}",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Container(
                    height: h * 0.08,
                    width: w * 0.77,
                    margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: Colors.grey)
                        // color: Colors.red,
                        ),
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: TextField(
                      cursorHeight: 20,
                      decoration: InputDecoration(
                          hintText: "Enter your To-Do hear...",
                          border: OutlineInputBorder(),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.white,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white))),
                    ),
                  ),
                ),
              ],
            ),
          )),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            i++;
          });
        },
        borderRadius: BorderRadius.circular(29),
        child: Container(
          height: h * 0.08,
          width: h * 0.08,
          decoration: BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
