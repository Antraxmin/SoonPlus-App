import 'package:flutter/material.dart';

class TransportPage extends StatefulWidget {
  @override
  _TransportPageState createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            '셔틀버스/지하철',
            style: TextStyle(fontSize: 17),
          ),
          backgroundColor: Colors.blue[900],
          foregroundColor: Colors.white,
        ),
        body: const Text('셔틀버스/지하철 및 기타 교통수단 정보 페이지입니다')
    );
  }
}

