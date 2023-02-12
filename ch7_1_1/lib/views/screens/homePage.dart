import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  late int num;
  @override
  void initState() {
    super.initState();
    num = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calc"),
        centerTitle: true,
        backgroundColor: Colors.lightBlue.shade800,
        leading: Icon(
          Icons.menu,
        ),
      ),
      body: Align(
          alignment: Alignment.center,
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(color: Colors.white),
            child: Column(
              children: [
                Ink(
                  child: InkWell(
                    child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 100,
                        child: Text(
                          "$num",
                          style: TextStyle(fontSize: 50, color: Colors.grey),
                        )),
                  ),
                ),
                Text("\n"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ink(
                      child: InkWell(
                        splashColor: Colors.red,
                        onTap: () {
                          setState(() {
                            num = num - 2;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "-2",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Ink(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            num = num + 2;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "+2",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text("\n"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Ink(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            num = num - 4;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "-4",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Ink(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            num = num + 4;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "+4",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Text("\n"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Ink(
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            num = 0;
                          });
                        },
                        child: Container(
                          height: 40,
                          width: 120,
                          decoration: BoxDecoration(
                              color: Colors.lightBlue.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          alignment: Alignment.center,
                          child: Text(
                            "Clear",
                            style: TextStyle(fontSize: 30, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
      backgroundColor: Colors.white,
    );
  }
}
