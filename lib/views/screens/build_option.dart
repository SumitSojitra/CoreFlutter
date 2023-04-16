import 'package:flutter/material.dart';

class Build_Option extends StatefulWidget {
  const Build_Option({Key? key}) : super(key: key);

  @override
  State<Build_Option> createState() => _Build_OptionState();
}

class _Build_OptionState extends State<Build_Option> {
  List<Map> allBuildOption = [
    {
      'image': "assets/images/contact-books.png",
      'title': "Contact info",
      'routes': "Contact_info_page",
    },
    {
      'image': "assets/images/briefcase.png",
      'title': "Carrier Objective",
      'routes': "Carrier_Objective_page",
    },
    {
      'image': "assets/images/user.png",
      'title': "Personal Detail",
      'routes': "Personal_Detail_page",
    },
    {
      'image': "assets/images/mortarboard.png",
      'title': "Education",
      'routes': "Education_page",
    },
    {
      'image': "assets/images/thinking.png",
      'title': "Experiences",
      'routes': "Experiences_page",
    },
    {
      'image': "assets/images/experience.png",
      'title': "Technical Skills",
      'routes': "Technical_Skills_page",
    },
    {
      'image': "assets/images/open-book.png",
      'title': "Interest/Hobbies",
      'routes': "Interest_page",
    },
    {
      'image': "assets/images/project.png",
      'title': "Projects",
      'routes': "Projects_page",
    },
    {
      'image': "assets/images/achievement.png",
      'title': "Achievements",
      'routes': "Achievements_page",
    },
    {
      'image': "assets/images/handshake.png",
      'title': "References",
      'routes': "References_page",
    },
    {
      'image': "assets/images/declaration.png",
      'title': "Declaration",
      'routes': "Declaration_page",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 0,
        leading: GestureDetector(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
        title: Text("Resume Workspace"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              height: 50,
              width: double.infinity,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                "Build Option",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
          Expanded(
              flex: 9,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: allBuildOption
                        .map((e) => Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: 30,
                                      height: 30,
                                      child: Image.asset(
                                        e['image'],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      e['title'],
                                      style: TextStyle(
                                        fontSize: 18,
                                      ),
                                    ),
                                    Spacer(),
                                    GestureDetector(
                                        onTap: () {
                                          Navigator.of(context)
                                              .pushNamed(e['routes']);
                                        },
                                        child: Icon(
                                            Icons.arrow_forward_ios_outlined)),
                                  ],
                                ),
                                Divider(
                                  thickness: 1,
                                  color: Colors.grey,
                                )
                              ],
                            ))
                        .toList(),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
