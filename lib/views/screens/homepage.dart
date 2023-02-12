import 'package:flutter/material.dart';

import '../../utils/color.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  DateTime currentDate = DateTime.now();

  String? birthDay;
  String? birthMonth;
  String? birthYear;

  int? currentDay;
  int? currentMonth;
  int? currentYear;

  int? nextDay;
  int? nextMonth;

  TextEditingController dayController = TextEditingController();
  TextEditingController monthController = TextEditingController();
  TextEditingController yearController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    double h = s.height;
    double w = s.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Age Calculator",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: AppbarColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Today's Date",
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText:
                              "${currentDate.day}/${currentDate.month}/${currentDate.year}",
                          hintStyle: TextStyle(
                            color: todaysDateTextColor,
                            fontSize: 20,
                          ),
                          enabled: false,
                          disabledBorder: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(
                flex: 1,
              ),
              //TODO :DOB
              Expanded(
                flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Date of Birth"),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 10,
                            child: TextField(
                              controller: dayController,
                              textAlign: TextAlign.center,
                              onChanged: (val) => birthDay = val,
                              decoration: InputDecoration(
                                  hintText: "DD",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: AppbarColor,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: AppbarColor,
                                  ))),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 10,
                            child: TextField(
                              controller: monthController,
                              textAlign: TextAlign.center,
                              onChanged: (val) => birthMonth = val,
                              decoration: InputDecoration(
                                  hintText: "MM",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: AppbarColor,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: AppbarColor,
                                  ))),
                            ),
                          ),
                          Spacer(),
                          Expanded(
                            flex: 10,
                            child: TextField(
                              controller: yearController,
                              textAlign: TextAlign.center,
                              onChanged: (val) => birthYear = val,
                              decoration: InputDecoration(
                                  hintText: "YYYY",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: AppbarColor,
                                  )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                    color: AppbarColor,
                                  ))),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              const Spacer(
                flex: 1,
              ),
              //TODO :Buttons
              Expanded(
                flex: 2,
                child: Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                        splashColor: Colors.grey.shade300,
                        onTap: () {
                          setState(() {
                            dayController.clear();
                            monthController.clear();
                            yearController.clear();

                            birthDay = null;
                            birthMonth = null;
                            birthYear = null;

                            currentDay = null;
                            currentMonth = null;
                            currentYear = null;

                            nextMonth = null;
                            nextDay = null;
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border.all(color: presentup),
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            "CLEAR",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Expanded(
                      flex: 3,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(6),
                        splashColor: Colors.blue,
                        onTap: () {
                          setState(() {
                            currentYear =
                                currentDate.year - int.parse(birthYear!);
                            if (int.parse(birthMonth!) < currentDate.month) {
                              currentMonth =
                                  currentDate.month - int.parse(birthMonth!);
                            } else if (int.parse(birthMonth!) >
                                currentDate.month) {
                              currentMonth =
                                  int.parse(birthMonth!) - currentDate.month;

                              currentYear = (currentYear! - 1);
                              currentMonth = 12 - currentMonth!;
                            }
                            if (int.parse(birthDay!) < currentDate.day) {
                              currentDay =
                                  currentDate.day - int.parse(birthDay!);
                            } else if (int.parse(birthDay!) > currentDate.day) {
                              currentDay =
                                  int.parse(birthDay!) - currentDate.day;
                              // currentMonth = (currentMonth! - 1);
                              currentDay =
                                  currentDay! + int.parse(birthMonth!) - 1;
                            }

                            if (int.parse(birthMonth!) > currentDate.month) {
                              nextMonth =
                                  int.parse(birthMonth!) - currentDate.month;
                            } else if (int.parse(birthMonth!) <
                                currentDate.month) {
                              nextMonth =
                                  currentDate.month - int.parse(birthMonth!);
                              nextMonth = 11 - nextMonth!;
                            }

                            if (int.parse(birthDay!) > currentDate.day) {
                              nextDay = int.parse(birthDay!) - currentDate.day;
                            }
                          });
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: presentup,
                              border: Border.all(color: Colors.indigo),
                              borderRadius: BorderRadius.circular(6)),
                          child: Text(
                            "Calculate",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(
                flex: 1,
              ),
              //TODO :PREsent
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Present Age"),
                    Container(
                      height: h * 0.15,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        gradient: LinearGradient(
                          colors: [
                            presentup,
                            presentdown,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.topRight,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${currentDay ?? "00"}",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Day",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${currentMonth ?? "00"}",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Month",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${currentYear ?? "00"}",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Year",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              const Spacer(
                flex: 1,
              ),
              //TODO:next
              Expanded(
                flex: 5,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Next Birthday"),
                    Container(
                      height: h * 0.15,
                      width: w * 0.9,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          gradient: LinearGradient(
                            colors: [nextup, nextdown],
                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )),
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${nextMonth ?? "00"}",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "MM",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "${nextDay ?? "00"}",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "DD",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
