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
        title: Text(
          "BOLT",
          style: TextStyle(
            fontSize: 30,
            letterSpacing: 30,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                height: h,
                color: Colors.yellow,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: h,
                color: Colors.black,
                alignment: Alignment.center,
                child: Icon(
                  Icons.electric_bolt,
                  color: Colors.yellow,
                  size: 60,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: h,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
