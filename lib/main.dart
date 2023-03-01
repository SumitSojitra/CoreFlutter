import 'package:ch10_2_1/views/screens/page1.dart';
import 'package:ch10_2_1/views/screens/page2.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        routes: {
          '/': (context) => page1(),
          'page2': (context) => page2(),
        });
  }
}
