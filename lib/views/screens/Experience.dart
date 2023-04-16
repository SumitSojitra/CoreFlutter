import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class Experiences_page extends StatefulWidget {
  const Experiences_page({Key? key}) : super(key: key);

  @override
  State<Experiences_page> createState() => _Experiences_pageState();
}

class _Experiences_pageState extends State<Experiences_page> {
  final GlobalKey<FormState> ExperienceFormKey = GlobalKey<FormState>();

  TextEditingController CompanyNameController = TextEditingController();
  TextEditingController SchoolController = TextEditingController();
  TextEditingController RolesController = TextEditingController();

  TextEditingController JoinDayController = TextEditingController();
  TextEditingController JoinMonthController = TextEditingController();
  TextEditingController JoinYearController = TextEditingController();

  TextEditingController ExitDayController = TextEditingController();
  TextEditingController ExitMonthController = TextEditingController();
  TextEditingController ExitYearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        title: Text("Experience"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  CompanyNameController.clear();
                  SchoolController.clear();
                  RolesController.clear();
                  JoinDayController.clear();
                  JoinMonthController.clear();
                  JoinYearController.clear();
                  ExitDayController.clear();
                  ExitMonthController.clear();
                  ExitYearController.clear();

                  Globals.CompanyName = null;
                  Globals.School = null;
                  Globals.Roles = null;

                  Globals.JoinDay = null;
                  Globals.JoinMonth = null;
                  Globals.JoinYear = null;

                  Globals.ExitDay = null;
                  Globals.ExitMonth = null;
                  Globals.ExitYear = null;

                  print("=======================");
                  print(Globals.CompanyName);
                  print(Globals.School);
                  print(Globals.Roles);
                  print("------------");
                  print(Globals.JoinDay);
                  print(Globals.JoinMonth);
                  print(Globals.JoinYear);
                  print("------------");
                  print(Globals.ExitDay);
                  print(Globals.ExitMonth);
                  print(Globals.ExitYear);
                  print("=======================");
                });
              },
              icon: Icon(Icons.restart_alt_rounded))
        ],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () async {
            if (ExperienceFormKey.currentState!.validate()) {
              ExperienceFormKey.currentState!.save();
            }
            ;
            print("=======================");
            print(Globals.ReferenceName);
            print(Globals.Designation);
            print(Globals.Institute);
            print("=======================");
            Navigator.of(context).pop();
          },
        ),
      ),
      backgroundColor: Color(0xffededed),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(16),
          // height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: ExperienceFormKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Company Name",
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
                    child: TextFormField(
                      validator: (val) {
                        if (val!.isEmpty) return "Enter Company Name First...";
                        return null;
                      },
                      onSaved: (val) {
                        Globals.CompanyName = val;
                      },
                      textInputAction: TextInputAction.next,
                      controller: CompanyNameController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "New Enterprise, San Francisco",
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
                    child: TextFormField(
                      textInputAction: TextInputAction.next,
                      validator: (val) {
                        if (val!.isEmpty)
                          return "Enter Institute Name First...";
                        return null;
                      },
                      onSaved: (val) {
                        Globals.School = val;
                      },
                      controller: SchoolController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "Quality Test Engineer",
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
                    "Roles (optional)",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onSaved: (val) {
                      Globals.Roles = val;
                    },
                    controller: RolesController,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText:
                            "Working with team members to come uo with new concepts and product analysis...",
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        )),
                    maxLines: 3,
                  ),
                  SizedBox(height: 14),
                  Text(
                    "Employed Status",
                    style: TextStyle(color: Colors.grey.shade600),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Radio(
                                      value: "Previously",
                                      groupValue: Globals.previously,
                                      onChanged: (val) {
                                        setState(() {
                                          Globals.previously = val!;
                                        });
                                      }),
                                  Text(
                                    "Previously Employed",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Radio(
                                      value: "Currently",
                                      groupValue: Globals.previously,
                                      onChanged: (val) {
                                        setState(() {
                                          Globals.previously = val!;
                                        });
                                      }),
                                  Text(
                                    "Currently Employed",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(height: 10),
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      //join
                      Expanded(
                          flex: 5,
                          child: Column(
                            children: [
                              Text(
                                "Date Joined",
                                style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                height: 30,
                                width: 104,
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
                                            Globals.JoinDay = val;
                                          },
                                          controller: JoinDayController,
                                          decoration: InputDecoration(
                                              hintText: "DD/",
                                              hintStyle: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.next,
                                          controller: JoinMonthController,
                                          onChanged: (val) {
                                            Globals.JoinMonth = val;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "MM",
                                              hintStyle: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          textInputAction: TextInputAction.done,
                                          controller: JoinYearController,
                                          onChanged: (val) {
                                            Globals.JoinYear = val;
                                          },
                                          decoration: InputDecoration(
                                              hintText: "/YYYY",
                                              hintStyle: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.grey)),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          )),

                      (Globals.previously == "Previously")
                          ? Expanded(
                              flex: 5,
                              child: Column(
                                children: [
                                  Text(
                                    "Date Exit",
                                    style: TextStyle(
                                        color: Colors.grey.shade600,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 30,
                                    width: 104,
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
                                              keyboardType:
                                                  TextInputType.number,
                                              textInputAction:
                                                  TextInputAction.next,
                                              onChanged: (val) {
                                                Globals.ExitDay = val;
                                              },
                                              controller: ExitDayController,
                                              decoration: InputDecoration(
                                                  hintText: "DD/",
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: TextField(
                                              keyboardType:
                                                  TextInputType.number,
                                              textInputAction:
                                                  TextInputAction.next,
                                              controller: ExitMonthController,
                                              onChanged: (val) {
                                                Globals.ExitMonth = val;
                                              },
                                              decoration: InputDecoration(
                                                  hintText: "MM",
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey)),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 4,
                                            child: TextField(
                                              onSubmitted: (val) {
                                                print(
                                                    "=======================");
                                                print(Globals.CompanyName);
                                                print(Globals.School);
                                                print(Globals.Roles);
                                                print("------------");
                                                print(Globals.JoinDay);
                                                print(Globals.JoinMonth);
                                                print(Globals.JoinYear);
                                                print("------------");
                                              },
                                              keyboardType:
                                                  TextInputType.number,
                                              textInputAction:
                                                  TextInputAction.done,
                                              controller: ExitYearController,
                                              onChanged: (val) {
                                                Globals.ExitYear = val;
                                              },
                                              decoration: InputDecoration(
                                                  hintText: "/YYYY",
                                                  hintStyle: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.grey)),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ))
                          : SizedBox(
                              width: 148,
                            ),
                      //exit
                    ],
                  ),
                  SizedBox(height: 10),
                  (Globals.previously == "Previously")
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    if (ExperienceFormKey.currentState!
                                        .validate()) {
                                      ExperienceFormKey.currentState!.save();
                                    }
                                    ;
                                    print("=======================");
                                    print(Globals.ReferenceName);
                                    print(Globals.Designation);
                                    print(Globals.Institute);
                                    print("=======================");
                                    print("=======================");
                                    print(Globals.CompanyName);
                                    print(Globals.School);
                                    print(Globals.Roles);
                                    print("------------");
                                    print(Globals.JoinDay);
                                    print(Globals.JoinMonth);
                                    print(Globals.JoinYear);
                                    print("------------");
                                    print(Globals.ExitDay);
                                    print(Globals.ExitMonth);
                                    print(Globals.ExitYear);
                                    print("=======================");
                                  });
                                },
                                child: Text(
                                  "SAVE",
                                )),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
