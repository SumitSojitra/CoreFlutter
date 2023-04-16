import 'package:flutter/material.dart';

import '../../utils/globals.dart';

class Declaration_page extends StatefulWidget {
  const Declaration_page({Key? key}) : super(key: key);

  @override
  State<Declaration_page> createState() => _Declaration_pageState();
}

class _Declaration_pageState extends State<Declaration_page> {
  TextEditingController descriptionController = TextEditingController();

  TextEditingController DayController = TextEditingController();
  TextEditingController MonthController = TextEditingController();
  TextEditingController YearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: Text("Declaration"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Globals.day = null;
                  Globals.month = null;
                  Globals.year = null;
                  Globals.description = null;
                  Globals.DeclarationCity = null;

                  descriptionController.clear();
                  DayController.clear();
                  MonthController.clear();
                  YearController.clear();

                  print(Globals.day);
                });
              },
              icon: Icon(Icons.restart_alt_rounded))
        ],
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).pop();
            });
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: Color(0xffededed),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Declaration",
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      Switch(
                          value: Globals.switc,
                          onChanged: (val) {
                            setState(() {
                              Globals.switc = val;
                            });
                          })
                    ],
                  ),
                ),
              ),
              (Globals.switc)
                  ? Transform.rotate(
                      angle: 0,
                      child: SingleChildScrollView(
                        child: Container(
                          height: 440,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(10)),
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,
                                  child: Image.network(
                                      "http://cdn.onlinewebfonts.com/svg/img_522858.png"),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                TextField(
                                  controller: descriptionController,
                                  textInputAction: TextInputAction.next,
                                  onChanged: (val) {
                                    Globals.description = val;
                                  },
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      hintText: "Description",
                                      hintStyle: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 18,
                                      )),
                                ),
                                TextField(
                                  enabled: false,
                                ),
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    //date
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Date",
                                            style: TextStyle(
                                                color: Colors.blue,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          SizedBox(
                                            height: 50,
                                          ),
                                          Container(
                                            height: 30,
                                            width: 104,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              // color: Colors.blue.shade100,
                                            ),
                                            child: Center(
                                              child: Row(
                                                children: [
                                                  Expanded(
                                                    flex: 2,
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      onChanged: (val) {
                                                        Globals.day = val;
                                                      },
                                                      controller: DayController,
                                                      decoration: InputDecoration(
                                                          hintText: "DD/",
                                                          hintStyle: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 2,
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textInputAction:
                                                          TextInputAction.next,
                                                      controller:
                                                          MonthController,
                                                      onChanged: (val) {
                                                        Globals.month = val;
                                                      },
                                                      decoration: InputDecoration(
                                                          hintText: "MM",
                                                          hintStyle: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 4,
                                                    child: TextField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      textInputAction:
                                                          TextInputAction.done,
                                                      controller:
                                                          YearController,
                                                      onChanged: (val) {
                                                        Globals.year = val;
                                                      },
                                                      decoration: InputDecoration(
                                                          hintText: "/YYYY",
                                                          hintStyle: TextStyle(
                                                              fontSize: 14,
                                                              color:
                                                                  Colors.grey)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),

                                    //place,city
                                    Expanded(
                                      flex: 5,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Place(Interview",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                          Text(
                                            "venue/city)",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                                color: Colors.blue),
                                          ),
                                          SizedBox(
                                            height: 20,
                                          ),
                                          DropdownButton(
                                              value: Globals.DeclarationCity,
                                              hint: Text(
                                                "Eg. Surat",
                                                style: TextStyle(fontSize: 14),
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(4),
                                              items: [
                                                DropdownMenuItem(
                                                  child: Text("Surat"),
                                                  value: "Surat",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Rajkot"),
                                                  value: "Rajkot",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Dwarka"),
                                                  value: "Dwarka",
                                                ),
                                                DropdownMenuItem(
                                                  child: Text("Nadiyad"),
                                                  value: "Nadiyad",
                                                ),
                                              ],
                                              onChanged: (val) {
                                                setState(() {
                                                  Globals.DeclarationCity = val;
                                                });
                                              })
                                        ],
                                      ),
                                    ),

                                    //save
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                        onPressed: () {
                                          setState(() {
                                            Navigator.of(context)
                                                .pushNamed('pdf');
                                            print(
                                                "================================");
                                            print(Globals.description);
                                            print(Globals.day);
                                            print(Globals.month);
                                            print(Globals.year);
                                            print(Globals.DeclarationCity);
                                            print(
                                                "================================");
                                          });
                                        },
                                        child: Text(
                                          "SAVE",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
