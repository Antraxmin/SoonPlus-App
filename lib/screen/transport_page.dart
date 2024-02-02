import 'package:flutter/material.dart';

class TransportPage extends StatefulWidget {
  @override
  _TransportPageState createState() => _TransportPageState();
}

class _TransportPageState extends State<TransportPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '셔틀버스/지하철',
          style: TextStyle(fontSize: 17),
        ),
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white,
          tabs: const <Widget>[
            Tab(text: "셔틀버스"),
            Tab(text: "통학버스"),
            Tab(text: "지하철")
          ],
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: TabBarView(
        controller: controller,
        children: const <Widget>[
          Center(
            child: Text("셔틀버스 페이지입니다")
          ),
          Center(
              child: Text("통학버스 페이지입니다")
          ),
          Center(
              child: Text("지하철 페이지입니다")
          )
        ],
      )
    );
  }
}
