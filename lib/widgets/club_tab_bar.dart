import 'package:flutter/material.dart';
import 'package:flutter/src/material/tab_controller.dart';

class ClubTabBar extends StatefulWidget {
  @override
  _ClubTabBarState createState() => _ClubTabBarState();
}

class _ClubTabBarState extends State<ClubTabBar>
    with SingleTickerProviderStateMixin {
  TabController _clubTabController;

  @override
  void initState() {
    super.initState();
    _clubTabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _clubTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TabBar(
          controller: _clubTabController,
          indicatorColor: Colors.teal,
          labelColor: Colors.teal,
          unselectedLabelColor: Colors.black54,
          isScrollable: true,
          tabs: [
            Tab(text: "One"),
            Tab(text: "Two"),
            Tab(text: "Three"),
            Tab(text: "Four"),
            Tab(text: "Five"),
          ],
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: TabBarView(
              controller: _clubTabController,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.blueAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.orangeAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.greenAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.indigoAccent,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.redAccent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
