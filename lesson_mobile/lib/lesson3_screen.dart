import 'package:flutter/material.dart';
import 'package:lesson_mobile/listView.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'my app',
    home: MyHomeScreen(),
  ));
}

class MyHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('Team CNTT'),
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
                SizedBox(height: 20),
                //buildRowLayout(),
                SizedBox(height: 20),
                Image.asset(
                  'assets/logo.png',
                  width: 200,
                  height: 200,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return listViewScreen();
                      }));
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text('welcome to Temple GIÓNG')));
                    },
                    child: const Text('go to lesson4')),
              ],
            )));
  }
}

// Widget buildRowLayout() {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.center,
//     children: [
//       Container(
//         color: Colors.blue,
//         width: 100,
//         height: 100,
//       ),
//       Container(
//         color: Colors.red,
//         width: 100,
//         height: 100,
//       ),
//       Container(
//         color: Colors.orange,
//         width: 100,
//         height: 100,
//       ),
//       Container(
//         color: Colors.green,
//         width: 100,
//         height: 100,
//       ),
//     ],
//   );
// }
