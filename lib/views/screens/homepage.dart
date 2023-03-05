import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool scr = true;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "GALLERY VIEWER",
            style: TextStyle(
              fontSize: 27,
              letterSpacing: 6,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
          actions: [
            Padding(
              padding: const EdgeInsets.all(13),
              child: InkWell(
                  onTap: () {
                    setState(() {
                      if (scr == true) {
                        scr = false;
                      } else {
                        scr = true;
                      }
                    });
                  },
                  child: Icon(Icons.grid_on_sharp)),
            )
          ],
        ),
        body: (scr)
            ? SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/3.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/5.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: SingleChildScrollView(
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/1.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/2.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/3.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              height: h * 0.4,
                              width: w,
                              child: Image.asset(
                                "assets/images/5.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ));
  }
}
