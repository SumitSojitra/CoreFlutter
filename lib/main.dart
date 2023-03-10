import 'package:exam_1/views/screens/fruits.dart';
import 'package:exam_1/views/screens/homepage.dart';
import 'package:exam_1/views/screens/income.dart';
import 'package:exam_1/views/screens/page2.dart';
import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(useMaterial3: true),
      // initialRoute: 'fruits',
      routes: {
        'tracker': (context) => homepage(),
        '/': (context) => page2(),
        'fruits': (context) => fruits(),
        'income': (context) => income(),
      },
    );
  }
}
