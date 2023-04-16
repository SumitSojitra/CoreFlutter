import 'package:flutter/material.dart';
import 'package:resume_app/views/screens/Declaration_page.dart';
import 'package:resume_app/views/screens/Education.dart';
import 'package:resume_app/views/screens/Experience.dart';
import 'package:resume_app/views/screens/References.dart';
import 'package:resume_app/views/screens/achievements_page.dart';
import 'package:resume_app/views/screens/build_option.dart';
import 'package:resume_app/views/screens/carrier_objective.dart';
import 'package:resume_app/views/screens/contact_info.dart';
import 'package:resume_app/views/screens/homepage.dart';
import 'package:resume_app/views/screens/pdf.dart';
import 'package:resume_app/views/screens/personal_detail_page.dart';
import 'package:resume_app/views/screens/technical_skill_page.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => homepage(),
      'build_option': (context) => Build_Option(),
      'Contact_info_page': (contect) => Contact_info_page(),
      'Carrier_Objective_page': (context) => carrier_objective_page(),
      'Technical_Skills_page': (context) => Technical_Skills_page(),
      'Achievements_page': (context) => achievements_page(),
      'Declaration_page': (context) => Declaration_page(),
      'References_page': (context) => References_page(),
      'Education_page': (context) => Education_page(),
      'Experiences_page': (context) => Experiences_page(),
      'Personal_Detail_page': (context) => PersonalDetailPage(),
      'pdf': (context) => pdf(),
    },
  ));
}
