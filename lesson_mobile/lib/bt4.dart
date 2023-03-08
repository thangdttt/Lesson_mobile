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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: TextField(),),
                Image.network(
                  'https://scontent.fhan5-11.fna.fbcdn.net/v/t1.6435-9/81464373_818049705305077_889717121204879360_n.jpg?stp=dst-jpg_s600x600&_nc_cat=111&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=EDjtO_NgVlEAX8yz9V5&tn=2xK6PuYdA34ShfSZ&_nc_ht=scontent.fhan5-11.fna&oh=00_AfD8WpKv9lSIUXYHWMxq0ymfEacu8fHGpc75i83W3Q-meg&oe=64266C2B',
                  width: 300,
                  height: 300,
                )
              ],
            ),
            TextField(),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(content: Text('Nút đã bấm')));
              },
              child: Text('click'),
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
