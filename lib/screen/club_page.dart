import 'package:flutter/material.dart';

class ClubPage extends StatefulWidget {
  @override
  _ClubPageState createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage>
    with SingleTickerProviderStateMixin {
  late TabController _clubTabController;

  @override
  void initState() {
    super.initState();
    _clubTabController = TabController(length: 7, vsync: this);
  }

  @override
  void dispose() {
    _clubTabController.dispose();
    super.dispose();
  }

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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48.0),
          child: Container(
            color: Colors.white,
            child: Center(
              child: TabBar(
                controller: _clubTabController,
                indicatorColor: Colors.blue,
                labelColor: Colors.blue[900],
                unselectedLabelColor: Colors.black54,
                isScrollable: true,
                tabs: [
                  Tab(text: "전체"),
                  Tab(text: "공연예술"),
                  Tab(text: "체육"),
                  Tab(text: "봉사"),
                  Tab(text: "교양학술"),
                  Tab(text: "종교"),
                  Tab(text: "준동아리"),
                ],
              ),
            ),
          ),
        ),
      ),
      body: TabBarView(
        controller: _clubTabController,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ],     
      ),
    );
  }
}
