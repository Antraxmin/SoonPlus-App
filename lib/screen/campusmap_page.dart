import 'package:flutter/material.dart';
import 'package:flutter_naver_map/flutter_naver_map.dart';

class CampusmapPage extends StatefulWidget {
  @override
  _CampusmapPageState createState() => _CampusmapPageState();
}

class _CampusmapPageState extends State<CampusmapPage> {

  @override
  void initState() {
    super.initState();
  }

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
      body: NaverMap(
        options: const NaverMapViewOptions(),
        forceGesture: false, 
        onMapReady: (controller) {},
        onMapTapped: (point, latLng) {},
        onSymbolTapped: (symbol) {},
        onCameraChange: (position, reason) {},
        onCameraIdle: () {},
        onSelectedIndoorChanged: (indoor) {},
      )
    );
  }
}
