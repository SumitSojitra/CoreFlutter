import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class achievements_page extends StatefulWidget {
  const achievements_page({Key? key}) : super(key: key);

  @override
  State<achievements_page> createState() => _achievements_pageState();
}

class _achievements_pageState extends State<achievements_page> {
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
        toolbarHeight: 140,
        title: Text("Achievements"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            setState(() {
              allTextFields.forEach((e) {
                Globals.acheivements.add(e.text);
              });
              print(Globals.acheivements);
              Navigator.of(context).pop();
            });
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Color(0xffededed),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Container(
          // height: 500,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter Acheivements",
                    style: TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ...allTextFields
                      .map((e) => Row(
                            children: [
                              Expanded(
                                  flex: 9,
                                  child: TextField(
                                    controller: e,
                                    decoration: InputDecoration(
                                        hintText: "Exceeded sales 17% average",
                                        hintStyle: TextStyle(
                                            color: Colors.grey, fontSize: 18)),
                                  )),
                              Expanded(
                                flex: 1,
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
                  SizedBox(
                    height: 20,
                  ),
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
