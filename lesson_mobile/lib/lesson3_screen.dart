import 'package:flutter/material.dart';

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
          title: Text('my new page'),
        ),
        body: Container(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Team CNTT',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                ),
                buildRowLayout(),
                SizedBox(height: 50),
                Image.network(
                  'https://scontent-sin6-1.xx.fbcdn.net/v/t39.30808-6/328054849_696618261931721_3882564888385819682_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=XUEGEosPmcYAX-guvps&_nc_ht=scontent-sin6-1.xx&oh=00_AfBZuceExn4vD58dwjEHec5xSIHGLseWZWHJzTn_cxzjrg&oe=6402F2EA',
                  width: 500,
                ),
                ElevatedButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('welcome to Temple GIÓNG')));
                    },
                    child: Text('click')),
              ],
            )
        )
    );
  }
}

Widget buildRowLayout() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        color: Colors.blue,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.red,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.orange,
        width: 100,
        height: 100,
      ),
      Container(
        color: Colors.green,
        width: 100,
        height: 100,
      ),
    ],
  );
}
