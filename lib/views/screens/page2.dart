import 'package:exam_1/views/utils/utils.dart';
import 'package:flutter/material.dart';

class page2 extends StatefulWidget {
  const page2({Key? key}) : super(key: key);

  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  double myvalue = 0;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    // double balance = ModalRoute.of(context)!.settings.arguments as double;
    // int Expanses = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Details"),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Expanses",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              // Text(""),

              Column(
                children: expense
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context)
                                .pushNamed('fruits', arguments: e);
                          });
                        },
                        child: Container(
                          height: h * 0.1,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(e['image']),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("${e['name']}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(""),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
              Text(
                "Income",
                style: TextStyle(color: Colors.grey.shade600),
              ),
              Column(
                children: incom
                    .map(
                      (e) => GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.of(context)
                                .pushNamed('income', arguments: e);
                          });
                        },
                        child: Container(
                          height: h * 0.09,
                          color: Colors.white,
                          alignment: Alignment.center,
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: AssetImage(e['image']),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("${e['name']}"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(""),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ));
  }
}
