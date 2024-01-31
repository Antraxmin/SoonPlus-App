import 'package:flutter/material.dart';
import 'package:soonplus_app/screen/campusmap_page.dart';
import 'package:soonplus_app/screen/club_page.dart';
import 'package:soonplus_app/screen/department_contact_page.dart';
import 'package:soonplus_app/screen/home_page.dart';
import 'package:soonplus_app/screen/login_page.dart';
import 'package:soonplus_app/screen/signup_page.dart';
import 'package:soonplus_app/screen/univ_notice_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':  (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/univnotice': (context) => UnivNoticePage(),
        '/departmentcontact' : (context) => DepartmentContactPage(),
        '/campusmap' : (context) => CampusmapPage(),
        '/club' : (context) => ClubPage(),
      },
    );
  }
}
