import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: Column(
          children: [
            Text("Resume Builder"),
            SizedBox(
              height: 50,
            ),
            Text("RESUMES"),
          ],
        ),
        centerTitle: true,
      ),
      body: DoubleBackToCloseApp(
        snackBar: SnackBar(
          // behavior: SnackBarBehavior.floating,
          content: Text("Swipe Again..."),
        ),
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                "assets/images/open-cardboard-box.png",
                height: 50,
              ),
              Text(
                "No Resumes + Create new resume.",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed("build_option");
        },
      ),
    );
  }
}
