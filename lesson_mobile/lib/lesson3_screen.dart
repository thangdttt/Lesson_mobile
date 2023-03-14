import 'package:flutter/material.dart';
import 'package:lesson_mobile/listView.dart';
import 'package:lesson_mobile/main.dart';

void main() => runApp(myApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'my app',
      //home: MyHomeScreen(),
      theme: ThemeData(dividerTheme: const DividerThemeData(
        thickness: 4,
        color: Colors.pink,
        indent: 10,
        endIndent: 10,
      )),
      initialRoute: router_view1,
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        router_view1: (context) => const MyHomeScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        router_view2: (context) => listViewScreen(''),
      },
    );
  }
}

const router_view1 = '/';
const router_view2 = '/view2';

class MyHomeScreen extends StatelessWidget {
  const MyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Team CNTT'),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Text(
                //   'Team CNTT',
                //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                // ),
                const SizedBox(height: 20),
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () async {
                      var result = await Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return listViewScreen('view 2');
                      }));
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(result.toString())));
                    },
                    child: const Text('go to view2')),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () async {
                      var result = await Navigator.pushNamed(context, router_view2, arguments: 'hello view 2');
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text(result.toString())));
                    },
                    child: const Text('go to view2')),
              ],
            )));
  }
}
