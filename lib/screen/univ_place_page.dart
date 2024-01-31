import 'package:flutter/material.dart';

class UnivPlacePage extends StatefulWidget {
  @override
  _UnivPlacePageState createState() => _UnivPlacePageState();
}

class _UnivPlacePageState extends State<UnivPlacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '교내 편의시설',
            style: TextStyle(fontSize: 17),
          ),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: const Text('교내 편의시설 페이지입니다')
    );
  }
}

