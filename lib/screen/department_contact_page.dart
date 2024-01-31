import 'package:flutter/material.dart';

class DepartmentContactPage extends StatefulWidget {
  @override
  _DepartmentContactPageState createState() => _DepartmentContactPageState();
}

class _DepartmentContactPageState extends State<DepartmentContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '부서별 연락처',
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: const Text('부서별 연락처 페이지입니다')
    );
  }
}

