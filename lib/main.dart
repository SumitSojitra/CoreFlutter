import 'package:flutter/material.dart';
import 'package:invoice_generator/views/screens/homepage.dart';
import 'package:invoice_generator/views/screens/datail_page.dart';
import 'package:invoice_generator/views/screens/invoice_page.dart';
import 'package:invoice_generator/views/screens/splash_screen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'splash_screen',
      routes: {
        '/': (context) => homepage(),
        'splash_screen': (context) => splash_screen(),
        'detail_page': (context) => detail_page(),
        'invoice_page': (context) => invoice_page(),
      },
    );
  }
}
