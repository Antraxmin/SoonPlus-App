import 'package:flutter/material.dart';

class UnivNoticePage extends StatefulWidget {
  @override
  _UnivNoticePageState createState() => _UnivNoticePageState();
}

class _UnivNoticePageState extends State<UnivNoticePage> {
  List<String> noticeList = []; // 공지사항 목록를 저장할 리스트
  String? selectedDepartment;

  // 서버로부터 공지사항 리스트를 가져오는 함수
  Future<List<String>> fetchNoticeList() async {
    // 서버 통신 로직

    return Future.delayed(const Duration(seconds: 2), () {
      return [
        '공지사항 1',
        '공지사항 2',
        '공지사항 3',
      ];
    });
  }

  @override
  void initState() {
    super.initState();
    fetchNoticeList().then((list) {
      setState(() {
        noticeList = list;
      });
    });
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
              },
            ),
          ),
          Expanded(
            child: noticeList.isEmpty
                ? const Center(
              child: CircularProgressIndicator(),
            )
                : ListView.builder(
              itemCount: noticeList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(noticeList[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
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
          value: '대학공지',
          child: Text('대학공지'),
        ),
        DropdownMenuItem(
          value: '학사공지',
          child: Text('학사공지'),
        ),
        DropdownMenuItem(
          value: '장학공지',
          child: Text('장학공지'),
        ),
        DropdownMenuItem(
          value: 'SRC생활관',
          child: Text('SRC생활관'),
        ),
        DropdownMenuItem(
          value: 'SW중심대학사업단',
          child: Text('SW중심대학사업단'),
        ),
      ],
      onChanged: onChanged,
      decoration: const InputDecoration(
        labelText: '부서 선택',
      ),
    );
  }
}