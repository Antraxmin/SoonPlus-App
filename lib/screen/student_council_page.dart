import 'package:flutter/material.dart';

class StudentCouncilPage extends StatefulWidget {
  @override
  _StudentCouncilPageState createState() => _StudentCouncilPageState();
}

class _StudentCouncilPageState extends State<StudentCouncilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '학생자치단체',
            style: TextStyle(fontSize: 17),
          ),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: const Text('학생자치단체 페이지입니다')
    );
  }
}

