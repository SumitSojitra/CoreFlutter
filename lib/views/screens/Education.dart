import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class Education_page extends StatefulWidget {
  const Education_page({Key? key}) : super(key: key);

  @override
  State<Education_page> createState() => _Education_pageState();
}

class _Education_pageState extends State<Education_page> {
  TextEditingController CourseController = TextEditingController();
  TextEditingController CollegeController = TextEditingController();
  TextEditingController PercentageController = TextEditingController();
  TextEditingController PassYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: Text("Education"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Globals.Course = null;
                  Globals.College = null;
                  Globals.percentage = null;
                  Globals.PassYear = null;

                  CollegeController.clear();
                  CollegeController.clear();
                  PercentageController.clear();
                  PassYearController.clear();

                  print("=======================");
                  print(Globals.Course);
                  print(Globals.College);
                  print(Globals.percentage);
                  print(Globals.PassYear);
                  print("=======================");
                });
              },
              icon: Icon(Icons.restart_alt_rounded))
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
              print("=======================");
              print(Globals.Course);
              print(Globals.College);
              print(Globals.percentage);
              print(Globals.PassYear);
              print("=======================");
              Navigator.of(context).pop();
            });
          },
        ),
      ),
      backgroundColor: Color(0xffededed),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          height: 440,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Course/Degree",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    onChanged: (val) {
                      Globals.Course = val;
                    },
                    textInputAction: TextInputAction.next,
                    controller: CourseController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "B. Tech Information Technology",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "School/College/Institute",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    textInputAction: TextInputAction.next,
                    onChanged: (val) {
                      Globals.College = val;
                    },
                    controller: CollegeController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Bhagwan Mahavir University",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Percentages/Grade",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    onChanged: (val) {
                      Globals.percentage = val;
                    },
                    controller: PercentageController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "70% (or) 7.0 CGPA",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Year Of Pass",
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 50,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    onChanged: (val) {
                      Globals.PassYear = val;
                    },
                    controller: PassYearController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "2019",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
