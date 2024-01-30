import 'package:flutter/material.dart';
import '../widgets/bottom_navigation_bar.dart';
import '../widgets/custom_drawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SOON+'),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Text('$_currentIndex 페이지'),
      ),
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationBarWidget(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
