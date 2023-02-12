import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int i = 1;
  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dynamic list"),
        centerTitle: true,
        backgroundColor: Color(0xff006699),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(
              i,
              (index) => Container(
                    height: h * 0.12,
                    width: w * 0.95,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: index % 2 == 0
                          ? Colors.indigo.shade600
                          : Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "${index + 1}",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                      ),
                    ),
                  )),
        ),
      ),
      floatingActionButton: InkWell(
        onTap: () {
          setState(() {
            i++;
          });
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              height: h * 0.08,
              width: h * 0.08,
              margin: EdgeInsets.all(5),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xff006699),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  i--;
                });
              },
              child: Container(
                height: h * 0.08,
                width: h * 0.08,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff006699),
                ),
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
