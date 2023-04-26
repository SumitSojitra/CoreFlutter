import 'dart:io';
import 'package:contact_diary_app/models/contacts.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/globnals.dart';

class EditContactPage extends StatefulWidget {
  const EditContactPage({Key? key}) : super(key: key);

  @override
  State<EditContactPage> createState() => _EditContactPageState();
}

class _EditContactPageState extends State<EditContactPage> {
  GlobalKey<FormState> ContactKey = GlobalKey<FormState>();

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? Email;
  File? imgFile;

  @override
  Widget build(BuildContext context) {
    Contacts contact = ModalRoute.of(context)!.settings.arguments as Contacts;
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit"),
        actions: [
          IconButton(
            onPressed: () async {
              if (ContactKey.currentState!.validate()) {
                ContactKey.currentState!.save();

                contact.firstName = firstName!;
                contact.lastName = lastName!;
                contact.phoneNumber = phoneNumber!;
                contact.email = Email!;
                contact.imgFile = imgFile!;

                await Navigator.of(context)
                    .pushNamedAndRemoveUntil('/', (route) => false);
                setState(() {});
              }
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
                      foregroundImage: (contact.imgFile == null)
                          ? null
                          : FileImage(contact.imgFile as File),
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
                          contact.imgFile = File(path);
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
                        initialValue: contact.firstName,
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
                        initialValue: contact.lastName,
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
                        initialValue: contact.phoneNumber,
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
                        initialValue: contact.email,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.emailAddress,
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
