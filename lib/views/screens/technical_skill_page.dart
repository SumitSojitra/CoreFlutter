import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Technical_Skills_page extends StatefulWidget {
  const Technical_Skills_page({Key? key}) : super(key: key);

  @override
  State<Technical_Skills_page> createState() => _Technical_Skills_pageState();
}

class _Technical_Skills_pageState extends State<Technical_Skills_page> {
  List<TextEditingController> allTextFields = [];

  @override
  void initState() {
    super.initState();
    allTextFields.add(TextEditingController());
    allTextFields.add(TextEditingController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Technical Skills"),
        centerTitle: true,
        toolbarHeight: 140,
        leading: GestureDetector(
            onTap: () {
              setState(() {
                allTextFields.forEach((e) {
                  Globals.technical_skills.add(e.text);
                });
                print(Globals.technical_skills);
                Navigator.of(context).pop();
              });
            },
            child: Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: Color(0xffededed),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          // height: 260,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter Your Skills",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ...allTextFields
                      .map((e) => Row(
                            children: [
                              Expanded(
                                flex: 8,
                                child: TextField(
                                  controller: e,
                                  decoration: InputDecoration(
                                    hintText: "C Programming, Web Technical",
                                  ),
                                ),
                              ),
                              Expanded(
                                child: IconButton(
                                    onPressed: () {
                                      setState(() {
                                        allTextFields.remove(e);
                                      });
                                    },
                                    icon: Icon(Icons.delete_rounded)),
                              )
                            ],
                          ))
                      .toList(),
                  SizedBox(height: 20),
                  Container(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton(
                          onPressed: () {
                            setState(() {
                              allTextFields.add(TextEditingController());
                            });
                          },
                          child: Icon(Icons.add)))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
