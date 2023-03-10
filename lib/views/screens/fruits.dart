import 'package:flutter/material.dart';

import '../utils/utils.dart';

class fruits extends StatefulWidget {
  const fruits({Key? key}) : super(key: key);

  @override
  State<fruits> createState() => _fruitsState();
}

class _fruitsState extends State<fruits> {
  String? value;
  int? val;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    Map data = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Set Amount",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(data['image']),
              ),
              Text(
                "${data['name']}",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
              Stack(children: [
                Container(
                  height: h * 0.09,
                  width: w * 0.2,
                  // color: Colors.red,
                  alignment: Alignment.centerLeft,
                  child: TextField(
                    onChanged: (val) {
                      setState(() {
                        value = val;
                      });
                    },
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                        hintStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        hintText: "0",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.blue)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Colors.blue,
                        ))),
                  ),
                ),
              ])
            ],
          ),
          Spacer(
            flex: 2,
          ),
          Container(
            height: h * 0.76,
            width: w,
            color: Colors.white,
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  // val = int.parse(value!);/
                  Navigator.of(context).pushNamed('tracker', arguments: value);
                });
              },
              child: Container(
                height: h * 0.08,
                width: w * 0.3,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(14)),
                margin: EdgeInsets.all(30),
                alignment: Alignment.center,
                child: Text(
                  "Next",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
