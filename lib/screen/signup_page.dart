import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _studentIDController = TextEditingController();
  TextEditingController _studentNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'SOON+ 회원가입',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: TextField(
                    controller: _emailController,
                    decoration: const InputDecoration(labelText: '순천향대학교 웹메일'),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    // 이메일 인증 로직 추가
                    _sendEmailVerification();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue[900],
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('인증'),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _studentNameController,
              decoration: const InputDecoration(labelText: '이름'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _studentIDController,
              decoration: const InputDecoration(labelText: '학번'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: '비밀번호'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _confirmPasswordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: '비밀번호 확인'),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                _signupButtonPressed();
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 50),
                primary: Colors.blue[900],
                onPrimary: Colors.white,
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),

              child: const Text(
                '회원가입',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sendEmailVerification() {
    String email = _emailController.text;
  }

  void _signupButtonPressed() {
    String email = _emailController.text;
    String studentID = _studentIDController.text;
    String studentName = _studentNameController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;
  }
}
