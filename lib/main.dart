import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OpenCloseDoors(),
    ),
  );
}

class OpenCloseDoors extends StatefulWidget {
  const OpenCloseDoors({Key? key}) : super(key: key);

  @override
  State<OpenCloseDoors> createState() => _OpenCloseDoorsState();
}

class _OpenCloseDoorsState extends State<OpenCloseDoors> {
  double a = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Open - Close Doors"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Align(
        child: InkWell(
          onTap: () {
            setState(() {
              if (a > 60) {
                a = a - 30;
              }
            });
          },
          onDoubleTap: () {
            setState(() {
              if (a < 80) {
                a = a + 30;
              }
            });
          },
          child: Container(
            height: 360,
            width: 230,
            decoration: BoxDecoration(
                color: Colors.black,
                border: Border.symmetric(
                    vertical: BorderSide(color: Colors.grey.shade500, width: a),
                    horizontal: BorderSide(color: Colors.black, width: 50))),
          ),
        ),
      ),
    );
  }
}
