import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:url_launcher/url_launcher.dart';

final apiUrl = dotenv.env['API_URL'];

class UnivNoticePage extends StatefulWidget {
  @override
  _UnivNoticePageState createState() => _UnivNoticePageState();
}

class _UnivNoticePageState extends State<UnivNoticePage> {
  List<Map<String, dynamic>> noticeList = [];
  String? selectedDepartment = '010100';

  @override
  void initState() {
    super.initState();
    fetchNoticeList(selectedDepartment ?? '').then((list) {
      setState(() {
        noticeList = list;
      });
    });
  }

  Future<List<Map<String, dynamic>>> fetchNoticeList(String departmentId) async {
    try {
      final url = '$apiUrl/university-notices/$departmentId';
      final response = await http.get(
        Uri.parse(url),
      );
      print(url);

      if (response.statusCode == 200) {
        final List<dynamic> responseData = json.decode(response.body);
        return responseData
            .map((notice) => {
          "title": notice["title"],
          "date": notice["date"],
          "author": notice["author"],
          "link": notice["link"],
        })
            .toList();
      } else {
        throw Exception('Failed to load notice');
      }
    } catch (error) {
      print(error);
      throw Exception('An error occurred');
    }
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '순천향대학교 공지사항',
          style: TextStyle(fontSize: 17),
        ),
        backgroundColor: Colors.blue[900],
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: DepartmentDropdown(
              selectedDepartment: selectedDepartment,
              onChanged: (value) {
                setState(() {
                  selectedDepartment = value;
                });
                fetchNoticeList(selectedDepartment ?? '').then((list) {
                  setState(() {
                    noticeList = list;
                  });
                });
              },
            ),
          ),

          Expanded(
            child: noticeList.isEmpty
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : ListView.separated(
              separatorBuilder: (context, index) => const Divider(), // 각 목록 사이에 구분선 추가
              itemCount: noticeList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(noticeList[index]["title"]!),
                  subtitle: Text(
                    '작성자: ${noticeList[index]["author"]!}, 날짜: ${noticeList[index]["date"]!}',
                  ),
                  onTap: () {
                    _launchURL(noticeList[index]["link"]!);
                  },
                );
              },

            ),
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}


class DepartmentDropdown extends StatelessWidget {
  final String? selectedDepartment;
  final void Function(String?)? onChanged;

  const DepartmentDropdown({
    Key? key,
    required this.selectedDepartment,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      value: selectedDepartment,
      items: const [
        DropdownMenuItem(
          value: '010100',
          child: Text('대학공지'),
        ),
        DropdownMenuItem(
          value: '010200',
          child: Text('학사공지'),
        ),
        DropdownMenuItem(
          value: '010300',
          child: Text('장학공지'),
        ),
        DropdownMenuItem(
          value: 'dormitory',
          child: Text('SRC생활관'),
        ),
        // DropdownMenuItem(
        //   value: 'SW중심대학사업단',
        //   child: Text('SW중심대학사업단'),
        // ),
      ],
      onChanged: onChanged,
      decoration: const InputDecoration(
        labelText: '부서 선택',
      ),
    );
  }
}







