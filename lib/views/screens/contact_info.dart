import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../utils/globals.dart';

class Contact_info_page extends StatefulWidget {
  const Contact_info_page({Key? key}) : super(key: key);

  @override
  State<Contact_info_page> createState() => _Contact_info_pageState();
}

class _Contact_info_pageState extends State<Contact_info_page> {
  final GlobalKey<FormState> ContactFormKey = GlobalKey<FormState>();

  final ImagePicker picker = ImagePicker();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController address3Controller = TextEditingController();

  int initialValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    nameController.clear();
                    emailController.clear();
                    phoneController.clear();
                    address1Controller.clear();
                    address2Controller.clear();
                    address3Controller.clear();

                    print(nameController);
                    print(emailController);
                    print(phoneController);
                    print(address1Controller);
                    print(address2Controller);
                    print(address3Controller);
                  });
                },
                child: Icon(Icons.refresh_outlined)),
          )
        ],
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Resume Workspace"),
        centerTitle: true,
      ),
      backgroundColor: Color(0xffededed),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initialValue = 0;
                      });
                    },
                    child: Text(
                      "Contact",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        initialValue = 1;
                      });
                    },
                    child: Text(
                      "Photo",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 9,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: IndexedStack(
                    index: initialValue,
                    children: [
                      //contact
                      SingleChildScrollView(
                        child: Container(
                          height: 500,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Form(
                            key: ContactFormKey,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Icon(
                                            Icons.person_sharp,
                                            size: 40,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: TextFormField(
                                          controller: nameController,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your name first...";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Globals.name = val;
                                          },
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              hintText: "Name",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Icon(
                                            Icons.mail,
                                            size: 40,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: TextFormField(
                                          controller: emailController,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your email first...";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Globals.email = val;
                                          },
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              hintText: "Email",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Icon(
                                            Icons.phone_android_outlined,
                                            size: 40,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: TextFormField(
                                          controller: phoneController,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your phone number first...";
                                            } else if (val!.length != 10) {
                                              return "Enter valid number...";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Globals.phone = val;
                                          },
                                          keyboardType: TextInputType.phone,
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              hintText: "Phone",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                          height: 50,
                                          width: 50,
                                          child: Icon(
                                            Icons.location_on_sharp,
                                            size: 40,
                                            color: Colors.grey,
                                          )),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: TextFormField(
                                          controller: address1Controller,
                                          validator: (val) {
                                            if (val!.isEmpty) {
                                              return "Enter your location first...";
                                            }
                                            return null;
                                          },
                                          onSaved: (val) {
                                            Globals.address1 = val;
                                          },
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              hintText:
                                                  "Address (Street, Building No.)",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: TextFormField(
                                          controller: address2Controller,
                                          onSaved: (val) {
                                            Globals.address2 = val;
                                          },
                                          textInputAction: TextInputAction.next,
                                          decoration: InputDecoration(
                                              hintText: "Address Line 2",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                      ),
                                    ),
                                    Expanded(
                                      flex: 6,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            0, 0, 20, 0),
                                        child: TextFormField(
                                          controller: address3Controller,
                                          onSaved: (val) {
                                            Globals.address3 = val;
                                          },
                                          onFieldSubmitted: (val) {
                                            if (ContactFormKey.currentState!
                                                .validate()) {
                                              ContactFormKey.currentState!
                                                  .save();

                                              print(Globals.name);
                                              print(Globals.email);
                                              print(Globals.phone);
                                              print(Globals.address1);
                                              print(Globals.address2);
                                              print(Globals.address3);
                                            }
                                          },
                                          textInputAction: TextInputAction.done,
                                          decoration: InputDecoration(
                                              hintText: "Address Line 3",
                                              hintStyle: TextStyle(
                                                color: Colors.grey,
                                              )),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      //phone
                      Container(
                        alignment: Alignment.center,
                        height: 300,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            CircleAvatar(
                              radius: 60,
                              foregroundImage: (Globals.image != null)
                                  ? FileImage(Globals.image as File)
                                  : null,
                              backgroundColor: Colors.grey.shade300,
                              child: Text(
                                "ADD",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            FloatingActionButton(
                              mini: true,
                              onPressed: () async {
                                XFile? image = await picker.pickImage(
                                    source: ImageSource.camera);

                                String imagePath = image!.path;

                                setState(() {
                                  Globals.image = File(imagePath);
                                });
                              },
                              child: Icon(Icons.add),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
