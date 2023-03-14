import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lesson_mobile/login_home.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      home: Scaffold(
        body: homeLogin(),
      ),
    );
  }
}

class homeLogin extends StatefulWidget {
  const homeLogin({super.key});
  @override
  State<StatefulWidget> createState() => Operation();
}

class Operation extends State<homeLogin> {
  var result = '';
  final userName = TextEditingController();
  final passWord = TextEditingController();

  @override
  void dispose() {
    userName.dispose();
    passWord.dispose();
    super.dispose();
  }

  void login() {
    var user_Name = userName.text;
    var pass_Word = passWord.text;
    if (user_Name.length < 6 || pass_Word.length < 6) {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('user or passWork không hợp lệ'),
            );
          });
      return;
    }
    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(user_Name);
    if (!emailValid) {
      showDialog(
          context: context,
          builder: (context) {
            return const AlertDialog(
              content: Text('email không hợp lệ'),
            );
          });
      return;
    }

    Navigator.push(
        context, MaterialPageRoute(builder: (C) => homeScreen(user_Name)));
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: SafeArea(
          child: Container(
              margin: const EdgeInsets.all(26),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            gapPadding: 10),
                        labelText: 'Nhập user',
                      ),
                      controller: userName),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          gapPadding: 10),
                      labelText: 'Nhập passWord',
                    ),
                    controller: passWord,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                      onPressed: () {
                        login();
                      },
                      child: const Text('login')),
                ],
              ))),
    );
  }
}
