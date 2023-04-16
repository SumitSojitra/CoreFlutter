import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class carrier_objective_page extends StatefulWidget {
  const carrier_objective_page({Key? key}) : super(key: key);

  @override
  State<carrier_objective_page> createState() => _carrier_objective_pageState();
}

class _carrier_objective_pageState extends State<carrier_objective_page> {
  final GlobalKey<FormState> Carrier_Objective_Key = GlobalKey<FormState>();

  TextEditingController CareerObjectiveController = TextEditingController();
  TextEditingController CurrentDesignationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Carrier Objective"),
          centerTitle: true,
          elevation: 0,
          toolbarHeight: 130,
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    CareerObjectiveController.clear();
                    CurrentDesignationController.clear();

                    Globals.Career_Objective = null;
                    Globals.Current_Designation = null;
                  });
                },
                icon: Icon(Icons.refresh))
          ],
          leading: IconButton(
            onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            },
            icon: Icon(Icons.arrow_back_ios),
          )),
      backgroundColor: Color(0xffededed),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: Carrier_Objective_Key,
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text("Career Objective",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: CareerObjectiveController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Write a Description First...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            Globals.Career_Objective = val;
                          },
                          textInputAction: TextInputAction.next,
                          maxLines: 5,
                          decoration: InputDecoration(
                              hintText: "Description",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 10),
                        Text("Current Designation (Experienced Candidate)",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: CurrentDesignationController,
                          validator: (val) {
                            if (val!.isEmpty) {
                              return "Write a Designation First...";
                            }
                            return null;
                          },
                          onSaved: (val) {
                            Globals.Current_Designation = val;
                          },
                          textInputAction: TextInputAction.done,
                          onFieldSubmitted: (val) {
                            if (Carrier_Objective_Key.currentState!
                                .validate()) {
                              Carrier_Objective_Key.currentState!.save();
                            }

                            print("=========================");
                            print(Globals.Career_Objective);
                            print(Globals.Current_Designation);
                            print("=========================");
                          },
                          decoration: InputDecoration(
                              hintText: "Software Engineer",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 16),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
