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
    return Scaffold(
      appBar: AppBar(
        title: Text("THE WALL"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(0, 5, 5, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.all(5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: h * 0.1,
                      width: w * 0.2,
                      margin: EdgeInsets.fromLTRB(5, 5, 0, 5),
                      color: Colors.brown.shade600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
