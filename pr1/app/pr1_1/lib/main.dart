import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("🛍️List of Fruits"),
        centerTitle: true,
        elevation: 5,
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "🍎 Apple\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🍇 Greps\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purpleAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🍒 Cherry\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🍓 Strawberry\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.pinkAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🥭 Mango\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🍍 PineApple\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🍋 Lemon\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.yellow,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🍉 Watermelon\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.lightGreenAccent,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
              TextSpan(
                text: "🥥 Coconut\n",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.brown,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.3,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
