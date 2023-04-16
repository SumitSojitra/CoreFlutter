import 'package:flutter/material.dart';
import 'package:resume_app/utils/globals.dart';

class References_page extends StatefulWidget {
  const References_page({Key? key}) : super(key: key);

  @override
  State<References_page> createState() => _References_pageState();
}

class _References_pageState extends State<References_page> {
  TextEditingController ReferenceNameController = TextEditingController();
  TextEditingController DesignationController = TextEditingController();
  TextEditingController InstituteController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140,
        title: Text("References"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  Globals.ReferenceName = null;
                  Globals.Designation = null;
                  Globals.Institute = null;

                  ReferenceNameController.clear();
                  DesignationController.clear();
                  InstituteController.clear();

                  print("=======================");
                  print(Globals.ReferenceName);
                  print(Globals.Designation);
                  print(Globals.Institute);
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
              print(Globals.ReferenceName);
              print(Globals.Designation);
              print(Globals.Institute);
              print("=======================");
              Navigator.of(context).pop();
            });
          },
        ),
      ),
      backgroundColor: Color(0xffededed),
      body: Container(
        margin: EdgeInsets.all(16),
        height: 350,
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
                "Reference Name",
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
                    Globals.ReferenceName = val;
                  },
                  textInputAction: TextInputAction.next,
                  controller: ReferenceNameController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Suresh Shah",
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
                "Designation",
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
                    Globals.Designation = val;
                  },
                  controller: DesignationController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Marketing Manager, ID-342332",
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
                "Organization/Institute",
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
                    Globals.Institute = val;
                  },
                  controller: InstituteController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Green Energy Pvt. Ltd",
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
    );
  }
}
