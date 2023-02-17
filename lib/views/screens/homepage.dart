import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String OP = '';
  double gst = 0;
  double FP = 0;
  double Rate = 0;
  double i = 0;

  List c1 = [
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
    Colors.white,
  ];
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 50, 0, 20),
            child: Container(
              height: h * 0.06,
              width: w,
              color: Color(0xffEEEEEE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 0, 0, 0),
                    child:
                        Text("ORIGINAL PRICE", style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                    child: Text("$OP Rs.", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Container(
              height: h * 0.12,
              width: w,
              color: Color(0xffEEEEEE),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("GST", style: TextStyle(fontSize: 25)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                c1[0] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                gst = double.parse(OP);
                                FP = (3 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Box("3", c1[0])),
                      ),
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                c1[1] = Colors.orange;
                                c1[0] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                gst = double.parse(OP);
                                FP = (5 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Box("5", c1[1])),
                      ),
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                c1[2] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[0] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                gst = double.parse(OP);
                                FP = (12 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Box("12", c1[2])),
                      ),
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                c1[3] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[0] = Color(0xffEEEEEE);
                                c1[4] = Color(0xffEEEEEE);
                                gst = double.parse(OP);
                                FP = (18 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Box("18", c1[3])),
                      ),
                      Expanded(
                        child: InkWell(
                            onTap: () {
                              setState(() {
                                c1[4] = Colors.orange;
                                c1[1] = Color(0xffEEEEEE);
                                c1[2] = Color(0xffEEEEEE);
                                c1[3] = Color(0xffEEEEEE);
                                c1[0] = Color(0xffEEEEEE);
                                gst = double.parse(OP);
                                FP = (28 * gst) / 100;
                                Rate = FP;
                                FP = FP + gst;
                              });
                            },
                            child: Box("28", c1[4])),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Container(
              height: h * 0.06,
              width: w,
              color: Color(0xffEEEEEE),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25, 10, 10, 10),
                    child: Text("FINAL PRICE", style: TextStyle(fontSize: 18)),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 25, 10),
                    child: Text("$FP Rs.", style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: h * 0.1,
            width: w * 0.6,
            decoration: BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.circular(8)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("CGST/SGST", style: TextStyle(fontSize: 18)),
                Text("${Rate / 2}", style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '7';
                                    });
                                  },
                                  child: Box2("7")),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '8';
                                    });
                                  },
                                  child: Box2("8")),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '9';
                                    });
                                  },
                                  child: Box2("9")),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '4';
                                    });
                                  },
                                  child: Box2("4")),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '5';
                                    });
                                  },
                                  child: Box2("5")),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '6';
                                    });
                                  },
                                  child: Box2("6")),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      OP = '';
                    });
                  },
                  child: Container(
                    height: h * 0.24,
                    width: w * 0.24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50)),
                    child: Text("AC",
                        style: TextStyle(fontSize: 30, color: Colors.white)),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '1';
                                    });
                                  },
                                  child: Box2("1")),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '2';
                                    });
                                  },
                                  child: Box2("2")),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '3';
                                    });
                                  },
                                  child: Box2("3")),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '00';
                                    });
                                  },
                                  child: Box2("00")),
                            ),
                            Expanded(
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      OP = OP + '0';
                                    });
                                  },
                                  child: Box2("0")),
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    OP = OP + '.';
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Container(
                                    height: 50,
                                    width: 50,
                                    alignment: Alignment.center,
                                    child: Text(
                                      ".",
                                      style: TextStyle(fontSize: 35),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      OP = OP.substring(0, OP.length - 1);
                    });
                  },
                  child: Container(
                    height: h * 0.24,
                    width: w * 0.24,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(50)),
                    child: Icon(Icons.backspace_outlined,
                        color: Colors.white, size: 25),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Box(String data, Color c12) {
    return Container(
      height: 30,
      width: 50,
      decoration:
          BoxDecoration(color: c12, borderRadius: BorderRadius.circular(8)),
      alignment: Alignment.center,
      child: Text("$data%", style: TextStyle(fontSize: 18)),
    );
  }

  Widget Box2(String data) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 75,
        width: 75,
        alignment: Alignment.center,
        child: Text("$data", style: TextStyle(fontSize: 25)),
      ),
    );
  }
}
