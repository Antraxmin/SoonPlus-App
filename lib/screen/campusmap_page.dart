import 'package:flutter/material.dart';

class CampusmapPage extends StatefulWidget {
  @override
  _CampusmapPageState createState() => _CampusmapPageState();
}

class _CampusmapPageState extends State<CampusmapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '캠퍼스맵',
            style: TextStyle(fontSize: 17),
          ),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: const Text('캠퍼스맵 페이지입니다')
    );
  }
}

