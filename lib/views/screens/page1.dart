import 'dart:html';

import 'package:ch10_2_1/utils/utils.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MARVEL UNIVERSE",
          style: TextStyle(fontSize: 28, letterSpacing: 8, color: Colors.white),
        ),
        backgroundColor: Color(0xff635985),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Text(
                  "Avengers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: alldata
                      .map((e) => Stack(
                            children: [
                              Container(
                                height: 270,
                                width: 200,
                                margin: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    boxShadow: [BoxShadow(blurRadius: 8)],
                                    border:
                                        Border.all(color: Color(0xff18122B)),
                                    color: Color(0xff393053),
                                    borderRadius: BorderRadius.circular(14)),
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 30, 0, 0),
                                      child: Text(
                                        "${e['CName']}",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(8, 0, 0, 0),
                                      child: Text(
                                        "${e['RName']}",
                                        style: TextStyle(color: Colors.grey),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          Navigator.of(context)
                                              .pushNamed('page2', arguments: e);
                                        });
                                      },
                                      child: Container(
                                        margin: EdgeInsets.all(10),
                                        height: 30,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          color: Color(0xff18122B),
                                          borderRadius:
                                              BorderRadius.circular(16),
                                        ),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "KNOW MORE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(60, 0, 0, 0),
                                child: Container(
                                  height: 145,
                                  width: 80,
                                  // color: Colors.red,
                                  child: Image(
                                    image: AssetImage(e['pic']),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ))
                      .toList()),
            )
          ],
        ),
      ),
      backgroundColor: Color(0xff443C68),
    );
  }
}
