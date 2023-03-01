import 'package:flutter/material.dart';

void main() {
  runApp(MyAppLesson4());
}

class MyAppLesson4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.pink),
        home: Lesson3HomePage(),
        debugShowCheckedModeBanner: false);
  }
}

class Lesson3HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeStartPage();
  }
}

class HomeStartPage extends State<Lesson3HomePage> {
  int soLanBam = 1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('My page'),
      ),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Đã bấm số lần là'),
            Text(
              '$soLanBam',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        )),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.plus_one),
        onPressed: () {
          if (soLanBam < 10) {
            setState(() {
              soLanBam++;
            });
          } else {
            setState(() {
              soLanBam = 1;
            });
          }
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void deactivate() {
    super.deactivate();
  }
}
