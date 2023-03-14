import 'package:flutter/material.dart';

class homeScreen extends StatefulWidget {
  var user;

  homeScreen(this.user, {super.key});

  @override
  State<StatefulWidget> createState() => _homeScreenState(user);
}

class _homeScreenState extends State<homeScreen> {
  var user;

  _homeScreenState(this.user);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('home'),
      ),
      body: Container(
        child: Center(
          child: Text('đăng nhập thành công $user'),
        )
        ),
    );
  }
}
