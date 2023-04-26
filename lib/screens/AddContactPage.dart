import 'dart:io';

import 'package:contact_diary_app/models/contacts.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/globnals.dart';

class AddContactPage extends StatefulWidget {
  const AddContactPage({Key? key}) : super(key: key);

  @override
  State<AddContactPage> createState() => _AddContactPageState();
}

class _AddContactPageState extends State<AddContactPage> {
  GlobalKey<FormState> ContactKey = GlobalKey<FormState>();

  TextEditingController FirstNameController = TextEditingController();
  TextEditingController LastNameController = TextEditingController();
  TextEditingController PhoneNumberController = TextEditingController();
  TextEditingController EmailController = TextEditingController();

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? Email;
  File? imgFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add"),
        actions: [
          IconButton(
            onPressed: () async {
              if (ContactKey.currentState!.validate()) {
                ContactKey.currentState!.save();
              }

              Contacts c1 = Contacts(
                firstName: firstName!,
                lastName: lastName!,
                phoneNumber: phoneNumber!,
                email: Email!,
                imgFile: imgFile!,
              );

              Globals.allContacts.add(c1);

              print("========================");
              print(c1.firstName);
              print(c1.lastName);
              print(c1.phoneNumber);
              print(c1.email);
              print(c1.imgFile);
              print("========================");

              await Navigator.of(context)
                  .pushNamedAndRemoveUntil('/', (route) => false);
              setState(() {});
            },
            icon: Icon(Icons.check),
          )
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      foregroundImage:
                          (imgFile == null) ? null : FileImage(imgFile as File),
                      radius: 60,
                      backgroundColor: Colors.grey,
                      child: Text(
                        "Add",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                    FloatingActionButton(
                      mini: true,
                      onPressed: () async {
                        ImagePicker picker = ImagePicker();

                        XFile? xfile =
                            await picker.pickImage(source: ImageSource.camera);

                        String path = xfile!.path;
                        setState(() {
                          imgFile = File(path);
                        });
                      },
                      child: Icon(
                        Icons.add,
                        color: (!Globals.isDark) ? Colors.white : Colors.black,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 40),
                Form(
                  key: ContactKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "First Name",
                        style: TextStyle(
                            fontSize: 18,
                            color:
                                (Globals.isDark) ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        controller: FirstNameController,
                        validator: (val) {
                          if (val!.isEmpty)
                            return "Enter First Name First ....";
                          return null;
                        },
                        onSaved: (val) {
                          firstName = val;
                        },
                        cursorColor:
                            (Globals.isDark) ? Colors.white : Colors.black,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          hintText: "Enter First Name",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: (Globals.isDark)
                                      ? Colors.white
                                      : Colors.black,
                                  width: 2)),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Last Name",
                        style: TextStyle(
                            fontSize: 18,
                            color:
                                (Globals.isDark) ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        controller: LastNameController,
                        textInputAction: TextInputAction.next,
                        validator: (val) {
                          if (val!.isEmpty) return "Enter Last Name First ....";
                          return null;
                        },
                        onSaved: (val) {
                          lastName = val;
                        },
                        cursorColor:
                            (Globals.isDark) ? Colors.white : Colors.black,
                        decoration: InputDecoration(
                          hintText: "Enter Last Name",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: (Globals.isDark)
                                      ? Colors.white
                                      : Colors.black,
                                  width: 2)),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Phone Number",
                        style: TextStyle(
                            fontSize: 18,
                            color:
                                (Globals.isDark) ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        controller: PhoneNumberController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        validator: (val) {
                          if (val!.isEmpty)
                            return "Enter Phone Number First ....";
                          else if (val.length != 10)
                            return "Enter 10 digit number...";
                          return null;
                        },
                        onSaved: (val) {
                          phoneNumber = val;
                        },
                        cursorColor:
                            (Globals.isDark) ? Colors.white : Colors.black,
                        decoration: InputDecoration(
                          hintText: "Enter Your Phone Number",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: (Globals.isDark)
                                      ? Colors.white
                                      : Colors.black,
                                  width: 2)),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 18,
                            color:
                                (Globals.isDark) ? Colors.white : Colors.black,
                            fontWeight: FontWeight.w400),
                      ),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
                        controller: EmailController,
                        validator: (val) {
                          if (val!.isEmpty) return "Enter Email First ....";
                          return null;
                        },
                        onSaved: (val) {
                          Email = val;
                        },
                        cursorColor:
                            (Globals.isDark) ? Colors.white : Colors.black,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: (Globals.isDark)
                                      ? Colors.white
                                      : Colors.black,
                                  width: 2)),
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
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
