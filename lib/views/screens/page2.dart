import 'package:ch10_2_1/utils/utils.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    Map data = ModalRoute.of(context)!.settings.arguments as Map;

    return Scaffold(
      appBar: AppBar(
        title: Text("Marvel Character",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Color(0xff635985),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  height: h * 0.5,
                  width: w,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 15, color: Colors.black12),
                    ],
                    color: Colors.white70,
                  ),
                  margin: EdgeInsets.all(10),
                  child: Image(
                    image: AssetImage(data['pic']),
                  )),
              Container(
                  height: h * 0.14,
                  width: w,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(blurRadius: 15, color: Colors.black12),
                    ],
                    color: Colors.white70,
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${data['CName']}",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "${data['RName']}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                    ],
                  )),
              Container(
                height: h * 0.5,
                width: w,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(blurRadius: 15, color: Colors.black12),
                  ],
                  color: Colors.white70,
                ),
                margin: EdgeInsets.all(10),
                child: Text("${data['dis']}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
