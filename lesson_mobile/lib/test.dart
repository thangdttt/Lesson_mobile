import 'package:flutter/material.dart';

import 'main.dart';

void main() {
  runApp(MyTestApp());
}

class MyTestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.green), home: MyTestHomePage());
  }
}

class MyTestHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var soLanBam = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text('hello new page'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('page 2'),
          ElevatedButton(
            onPressed: () {
              print('đã bấm: $soLanBam lần');
              soLanBam++;
            },
            child: Text('click'),
          )
        ],
      )),
    );
  }
}
