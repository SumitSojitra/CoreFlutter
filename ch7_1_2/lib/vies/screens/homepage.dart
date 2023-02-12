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
    double w = s.width;
    double h = s.height;

    return Scaffold(
        appBar: AppBar(
          title: Text("Map"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu),
        ),
        body: Align(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: Container(
                  height: h * 0.11,
                  width: w,
                  decoration: BoxDecoration(color: Colors.white),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Exit",
                        style: TextStyle(fontSize: 25, color: Colors.black),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                        child: Icon(Icons.exit_to_app),
                      ),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      height: h * 0.11,
                      width: w,
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Play",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                            child: Icon(Icons.play_arrow),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      height: h * 0.11,
                      width: w,
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pause",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                            child: Icon(Icons.pause),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      height: h * 0.11,
                      width: w,
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Stop",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                            child: Icon(Icons.stop),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      height: h * 0.11,
                      width: w,
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Close",
                            style: TextStyle(fontSize: 25, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                            child: Icon(Icons.close),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      height: h * 0.11,
                      width: w,
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Delete",
                            style: TextStyle(fontSize: 26, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                            child: Icon(Icons.delete),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Container(
                      height: h * 0.11,
                      width: w,
                      decoration: BoxDecoration(color: Colors.white),
                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Email",
                            style: TextStyle(fontSize: 26, color: Colors.black),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 14, 0),
                            child: Icon(Icons.email),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.white70);
  }
}
