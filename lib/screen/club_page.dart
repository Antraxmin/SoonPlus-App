import 'package:flutter/material.dart';

class ClubPage extends StatefulWidget {
  @override
  _ClubPageState createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '동아리',
            style: TextStyle(fontSize: 17),
          ),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: const Text('동아리 페이지입니다')
    );
  }
}

