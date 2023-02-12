import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Icons",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 6, 6, 6),
                    height: 125,
                    width: 125,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),

                    alignment: Alignment.center,
                    child: Icon(
                      Icons.add,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.radio_button_checked_rounded,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.alarm,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 6, 6, 6),
                    height: 125,
                    width: 125,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),

                    alignment: Alignment.center,
                    child: Icon(
                      Icons.shield_moon,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.person_outline_rounded,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.restart_alt_outlined,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.shuffle,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.ac_unit,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 6, 6, 6),
                    height: 125,
                    width: 125,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),

                    alignment: Alignment.center,
                    child: Icon(
                      Icons.more,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.more_vert,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.vertical_align_bottom_rounded,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.arrow_drop_down_circle_outlined,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 6, 6, 6),
                    height: 125,
                    width: 125,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),

                    alignment: Alignment.center,
                    child: Icon(
                      Icons.phone,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.search,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.warning,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.stop,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(10, 6, 6, 6),
                    height: 125,
                    width: 125,
                    // color: Colors.grey,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),

                    alignment: Alignment.center,
                    child: Icon(
                      Icons.grid_on_outlined,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.leaderboard_sharp,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.wifi_lock,
                      size: 40,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(6),
                    height: 125,
                    width: 125,
                    decoration: BoxDecoration(
                      color: Color(
                        0xdfff2f2f2,
                      ),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          // spreadRadius: 5,
                          blurRadius: 10,
                          color: Colors.grey,
                          offset: Offset(0, 10),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.signal_cellular_0_bar_sharp,
                      color: Colors.grey.shade600,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
