import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class PersonalDetailPage extends StatefulWidget {
  const PersonalDetailPage({Key? key}) : super(key: key);

  @override
  State<PersonalDetailPage> createState() => _PersonalDetailPageState();
}

class _PersonalDetailPageState extends State<PersonalDetailPage> {
  TextEditingController BirthDayController = TextEditingController();
  TextEditingController BirthMonthController = TextEditingController();
  TextEditingController BirthYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Personal Details"),
        centerTitle: true,
        toolbarHeight: 140,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Color(0xffededed),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("DOB",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500)),
                Container(
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    // color: Colors.blue.shade100,
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            onChanged: (val) {
                              Globals.birthDay = val;
                            },
                            controller: BirthDayController,
                            decoration: InputDecoration(
                                hintText: "DD",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            controller: BirthMonthController,
                            onChanged: (val) {
                              Globals.birthMonth = val;
                            },
                            decoration: InputDecoration(
                                hintText: "MM",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                          ),
                        ),
                        Expanded(
                          flex: 4,
                          child: TextField(
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            controller: BirthYearController,
                            onChanged: (val) {
                              Globals.birthYear = val;
                            },
                            decoration: InputDecoration(
                                hintText: "YYYY",
                                hintStyle: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text("Marital Status",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 20),
                Text("Languages Known",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 20),
                Text("Nationality",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.w500)),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
