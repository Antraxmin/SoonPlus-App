import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';
import 'package:soonplus_app/screen/campusmap_page.dart';
import 'package:soonplus_app/screen/club_page.dart';
import 'package:soonplus_app/screen/department_contact_page.dart';
import 'package:soonplus_app/screen/home_page.dart';
import 'package:soonplus_app/screen/login_page.dart';
import 'package:soonplus_app/screen/signup_page.dart';
import 'package:soonplus_app/screen/student_council_page.dart';
import 'package:soonplus_app/screen/transport_page.dart';
import 'package:soonplus_app/screen/univ_notice_page.dart';
import 'package:soonplus_app/screen/univ_place_page.dart';
import 'package:soonplus_app/widgets/naver_map.dart';

void main() async {
  await dotenv.load(fileName: ".env");
  final naverMapId = dotenv.env['NAVER_MAP_CLIENT_ID'];
  WidgetsFlutterBinding.ensureInitialized();
  await NaverMapSdk.instance.initialize(clientId: naverMapId);
  runApp(MyApp());
}
// void main() async {
//   await dotenv.load(fileName: ".env");
//   runApp(MyApp());
// }

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
        '/campusmap' : (context) => CampusMapPage(),
        '/club' : (context) => ClubPage(),
        '/studentcouncil' : (context) => StudentCouncilPage(),
        '/univplace' : (context) => UnivPlacePage(),
        '/transport': (context) => TransportPage()
      },
    );
  }
}
