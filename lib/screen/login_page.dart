import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

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
              'SOON+',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 5.0),
            Text(
              '대학 생활의 모든 것을 담다',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue[900],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50.0),
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(labelText: '순천향대학교 웹메일'),
            ),
            const SizedBox(height: 10.0),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(labelText: '비밀번호'),
            ),
            const SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                // 로그인 로직 추가
                _loginButtonPressed();
              },
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 50),
                primary: Colors.blue[900],
                onPrimary: Colors.white,
              ),
              child: const Text(
                '로그인',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _loginButtonPressed() {
    String username = _usernameController.text;
    String password = _passwordController.text;
  }
}
