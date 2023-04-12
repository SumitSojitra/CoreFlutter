import 'package:flutter/material.dart';

import '../../utils/utils.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String display = path + p1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("instagram"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        foregroundImage: AssetImage(display),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(
                              color: Colors.green,
                              width: 6,
                            ),
                            shape: BoxShape.circle),
                      )
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        5,
                        (index) => CircleAvatar(
                          radius: 30,
                          foregroundImage: AssetImage("aseets/images/4.png"),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 50),
            Divider(),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: allimg
                    .map((e) => GestureDetector(
                          onTap: () {
                            setState(() {
                              display = path + e;
                            });
                          },
                          child: Container(
                            height: 150,
                            width: 150,
                            margin: EdgeInsets.all(5),
                            child: Image.asset(path + e),
                          ),
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
