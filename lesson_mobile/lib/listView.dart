import 'package:flutter/material.dart';

class listViewScreen extends StatefulWidget {

  @override
  State<listViewScreen> createState() => _listViewScreenState();
}

class _listViewScreenState extends State<listViewScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text('new page'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 150,
              child: ListView(
                padding: const EdgeInsets.all(20),
                children: <Widget>[
                  Container(
                    height: 50,
                    color: Colors.amber[600],
                    child: const Center(child: Text('Entry A')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[500],
                    child: const Center(child: Text('Entry B')),
                  ),
                  Container(
                    height: 50,
                    color: Colors.amber[100],
                    child: const Center(child: Text('Entry C')),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            buildListView2(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        countAddItem++;
                        entries.add(countAddItem.toString());
                        colorCodes.add(200 - countAddItem * 20);
                      });
                    },
                    child: const Text('Add item')),
                const SizedBox(width: 20),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if(countAddItem != 0){
                          countAddItem--;
                          entries.removeLast();
                          colorCodes.removeLast();
                        }
                      });
                    }, child: const Text('Remove item'))
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Back'))
          ],
        ),
      ),
    );
  }
}

final List<String> entries = <String>['A', 'B', 'C', 'D', 'E', 'F'];
final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];

int countAddItem = 0;

Widget buildListView2() {
  return Container(
    height: 200,
    child: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: entries.length,
        itemBuilder: (BuildContext contex, int index) {
          return Container(
            height: 50,
            color: Colors.red[colorCodes[index]],
            child: Center(child: Text('Item ${entries[index]}')),
          );
        }),
  );
}
