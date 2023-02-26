import 'package:ch10_1_1/utils/utils.dart';
import 'package:ch10_1_1/views/screens/page2.dart';
import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MNC CEOs",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 10,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: alldata
                .map((e) => GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => page2(
                                    data: e,
                                  )));
                        });
                      },
                      child: Container(
                        height: h * 0.12,
                        width: w * 0.97,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(6),
                        ),
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            // Image.asset(logoPath + l1),
                            Container(
                              height: w * 0.2,
                              width: w * 0.2,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(e['logo']),
                                  fit: BoxFit.cover,
                                ),
                                // color: Colors.blue,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "${e['Company']}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "${e['ceoN']}",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 18,
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(150, 0, 0, 0),
                              child: Container(
                                height: w * 0.15,
                                width: w * 0.15,
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(e['ceo']),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ))
                .toList(),
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade300,
    );
  }
}
