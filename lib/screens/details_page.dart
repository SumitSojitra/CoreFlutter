import 'package:contact_diary_app/models/contacts.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

import '../utils/globnals.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    Contacts data = ModalRoute.of(context)!.settings.arguments as Contacts;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Contacts",
            style: TextStyle(),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    Globals.isDark = !Globals.isDark;
                  });
                },
                icon: Icon(
                  Icons.circle,
                )),
            IconButton(
                onPressed: () {
                  setState(() {});
                },
                icon: Icon(
                  Icons.more_vert,
                )),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Spacer(flex: 4),
                  CircleAvatar(
                    radius: 50,
                    foregroundImage: FileImage(data.imgFile!),
                  ),
                  SizedBox(width: 20),
                  IconButton(
                      onPressed: () async {
                        Globals.allContacts.remove(data);

                        await Navigator.of(context)
                            .pushNamedAndRemoveUntil('/', (route) => false);

                        setState(() {});
                      },
                      icon: Icon(Icons.delete_rounded)),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed('edit_page', arguments: data);
                      },
                      icon: Icon(Icons.edit)),
                ],
              ),
              SizedBox(height: 20),
              Text(
                "${data.firstName} ${data.lastName}",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 26),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "+91 ${data.phoneNumber}",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.black45),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: () async {
                          Uri url = Uri.parse("tel:+91 ${data.phoneNumber}");

                          await launchUrl(url);
                        },
                        child: Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.green,
                        mini: true,
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: () async {
                          Uri url = Uri.parse("sms:+91${data.phoneNumber}");

                          await launchUrl(url);
                        },
                        child: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.orangeAccent,
                        mini: true,
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: () async {
                          Uri url = Uri.parse("mailto:${data.email}");

                          await launchUrl(url);
                        },
                        child: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.blueAccent,
                        mini: true,
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        onPressed: () {
                          Share.share(
                              "${data.firstName} ${data.lastName} : +91 ${data.phoneNumber}");
                        },
                        child: Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        backgroundColor: Colors.orange,
                        mini: true,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Divider(color: Colors.black45),
                ],
              )
            ],
          ),
        ));
  }
}
