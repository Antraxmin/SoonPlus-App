import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  final List<Map<String, dynamic>> drawerItems = [
    {
      'title': '순천향대학교 공지사항',
      'onTap': (BuildContext context) {
        Navigator.pushNamed(context, '/univnotice');
      },
    },
    {
      'icon': Icons.info,
      'title': '부서별 연락처',
      'onTap': () {
      },
    },
    {
      'title': '강의실/건물 찾기',
      'onTap': () {
      },
    },
    {
      'icon': Icons.info,
      'title': '동아리',
      'onTap': () {
      },
    },
    {
      'icon': Icons.info,
      'title': '학생자치단체',
      'onTap': () {
      },
    },
    {
      'icon': Icons.info,
      'title': '편의시설',
      'onTap': () {
      },
    },
    {
      'icon': Icons.info,
      'title': '셔틀버스/지하철',
      'onTap': () {
      },
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: drawerItems.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue[900],
              ),
              child: const Text(
                'SOON+',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            );
          }

          final item = drawerItems[index - 1];

          return ListTile(
            title: Text(item['title']),
            onTap: () => item['onTap'](context),
          );
        },
      ),
    );
  }
}
