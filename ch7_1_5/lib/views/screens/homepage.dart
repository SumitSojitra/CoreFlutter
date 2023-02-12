import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List color = List.generate(18, (index) => Colors.primaries);
  List icons = List.generate(
      10,
      (index) => [
            Icon(Icons.mail),
            Icon(Icons.access_time_filled_rounded),
            Icon(Icons.phone),
            Icon(Icons.search),
            Icon(Icons.refresh_outlined),
            Icon(Icons.home),
            Icon(Icons.backspace),
            Icon(Icons.stop),
            Icon(Icons.play_arrow),
            Icon(Icons.traffic),
          ]);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Icons Editor",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Icon(
                Icons.person,
                size: 100,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              alignment: Alignment.center,
            )
          ],
        ),
      ),
    );
  }
}
