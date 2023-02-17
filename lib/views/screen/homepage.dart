import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  double slideval = 0;
  double weight = 0;
  double age = 1;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
        centerTitle: true,
        backgroundColor: Color(0xff090E21),
        elevation: 0,
      ),
      body: Center(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 10),
                        child: Expanded(
                          child: Container(
                            height: h * 0.23,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(7)),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "♀️",
                                  style: TextStyle(
                                    fontSize: 80,
                                  ),
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 0, 10),
                        child: Expanded(
                          child: Container(
                            height: h * 0.23,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(7)),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "♂️",
                                  style: TextStyle(
                                    fontSize: 80,
                                  ),
                                ),
                                Text(
                                  "Male",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Container(
                      height: h * 0.2,
                      width: w * 3,
                      decoration: BoxDecoration(
                          color: Color(0xff1D1E33),
                          borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "HEIGHT",
                            style: TextStyle(color: Color(0xff626473)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${slideval.toInt()} ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                              ),
                              Text(
                                "cm",
                                style: TextStyle(color: Color(0xff626473)),
                              ),
                            ],
                          ),
                          Slider(
                            value: slideval,
                            onChanged: (val) {
                              setState(() {
                                slideval = val;
                              });
                            },
                            min: 0,
                            max: 200,
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
                        child: Expanded(
                          child: Container(
                            height: h * 0.23,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(7)),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Weight",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "${weight.toInt()}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            weight--;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.07,
                                          width: h * 0.07,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff4c4f5e),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                fontSize: 34,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            weight++;
                                          });
                                        },
                                        child: Container(
                                            height: h * 0.07,
                                            width: h * 0.07,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff4c4f5e),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                  fontSize: 34,
                                                  color: Colors.white),
                                            )),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        child: Expanded(
                          child: Container(
                            height: h * 0.23,
                            width: w * 0.4,
                            decoration: BoxDecoration(
                                color: Color(0xff1D1E33),
                                borderRadius: BorderRadius.circular(7)),
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Age",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "${age.toInt()}",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            age--;
                                          });
                                        },
                                        child: Container(
                                          height: h * 0.07,
                                          width: h * 0.07,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xff4c4f5e),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            "-",
                                            style: TextStyle(
                                                fontSize: 34,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            age++;
                                          });
                                        },
                                        child: Container(
                                            height: h * 0.07,
                                            width: h * 0.07,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff4c4f5e),
                                            ),
                                            alignment: Alignment.center,
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                  fontSize: 34,
                                                  color: Colors.white),
                                            )),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                bottom: -16,
                right: 11,
                left: 11,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Expanded(
                    child: Container(
                      height: h * 0.11,
                      width: w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(40),
                          ),
                          color: Color(0xffEB1555)),
                      alignment: Alignment.center,
                      child: Text(
                        "Calculate",
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
      backgroundColor: Color(0xff090E21),
    );
  }
}
