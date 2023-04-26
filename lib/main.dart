import 'package:contact_diary_app/screens/AddContactPage.dart';
import 'package:contact_diary_app/screens/details_page.dart';
import 'package:contact_diary_app/screens/edit_page.dart';
import 'package:contact_diary_app/screens/splash_screen.dart';
import 'package:contact_diary_app/utils/App_Themes.dart';
import 'package:contact_diary_app/utils/globnals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool Grid = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.LightTheme,
      darkTheme: AppTheme.DarkTheme,
      themeMode: (Globals.isDark) ? ThemeMode.dark : ThemeMode.light,
      initialRoute: 'splash_screen',
      routes: {
        '/': (context) => Scaffold(
              appBar: AppBar(
                elevation: 0,
                systemOverlayStyle: SystemUiOverlayStyle(
                    statusBarIconBrightness: Brightness.light),
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
                        setState(() {
                          Grid = !Grid;
                        });
                      },
                      icon: Icon(
                        Icons.more_vert,
                      )),
                ],
              ),
              body: (Globals.allContacts.isNotEmpty)
                  ? (Grid)
                      ? Scrollbar(
                          radius: Radius.circular(20),
                          thickness: 20,
                          interactive: true,
                          child: GridView.builder(
                            padding: EdgeInsets.all(10),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10),
                            itemCount: 20,
                            itemBuilder: (context, index) => Container(
                              height: 200,
                              color: Colors.redAccent,
                            ),
                          ),
                        )
                      : ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: Globals.allContacts.length,
                          itemBuilder: (context, i) {
                            return ListTile(
                              onTap: () {
                                setState(() {
                                  Navigator.of(context).pushNamed('DetailPage',
                                      arguments: Globals.allContacts[i]);
                                });
                              },
                              leading: CircleAvatar(
                                radius: 30,
                                foregroundImage:
                                    FileImage(Globals.allContacts[i].imgFile!),
                              ),
                              title: Text(
                                  "${Globals.allContacts[i].firstName} ${Globals.allContacts[i].lastName}"),
                              subtitle: Text(
                                  "+91 ${Globals.allContacts[i].phoneNumber}"),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.green,
                                ),
                              ),
                            );
                          },
                        )
                  : Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Image.asset(
                            "assets/icons/open-cardboard-box.png",
                            height: 100,
                            color:
                                (Globals.isDark) ? Colors.white : Colors.black,
                          ),
                          Text(
                            "You have no Contacts yet.",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    ),
              floatingActionButton: FloatingActionButton(
                child: Icon(Icons.add,
                    color: (!Globals.isDark) ? Colors.white : Colors.black),
                onPressed: () {
                  Navigator.of(context).pushNamed('AddContactPage');
                },
              ),
            ),
        'splash_screen': (context) => Splash_Screen(),
        'AddContactPage': (context) => AddContactPage(),
        'DetailPage': (context) => DetailPage(),
        'edit_page': (context) => EditContactPage(),
      },
    );
  }
}
