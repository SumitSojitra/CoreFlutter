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
        title: Text("SPLITTER"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    children: List.generate(
                        10,
                        (index) => Container(
                              height: h * 0.1,
                              width: w * 1,
                              color: Colors.yellow.shade700,
                              margin: EdgeInsets.all(6),
                              alignment: Alignment.center,
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            )),
                  ),
                ),
                width: w,
                color: Colors.orange,
              ),
            ),
            Expanded(
              child: Container(
                width: w,
                color: Colors.deepOrange,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        10,
                        (index) => Container(
                              height: h * 1,
                              width: w * 0.2,
                              color: Colors.grey,
                              margin: EdgeInsets.all(6),
                              alignment: Alignment.center,
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(fontSize: 20),
                              ),
                            )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
