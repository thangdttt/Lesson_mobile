import 'package:flutter/material.dart';

void main() {
  runApp(HomeColor());
}

class HomeColor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffaa249e),
          title: Text('Relatable'),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 6,
                offset: Offset(0, 1),
              )
            ],
          ),
          height: 30.0,
          child: SeasonListWidget(),
        ),
      ),
    );
  }
}

Season venus = Season('Venus');
Season helado = Season('Helado');
Season year1800s = Season('1800s');
Season neon = Season('Neon');
Season ritmo = Season('Ritmo');
Season lente = Season('Lente');
Season gemas = Season('Gemas');

var seasonsList = [venus, helado, year1800s, neon, ritmo, lente, gemas];

class SeasonListWidget extends StatefulWidget {
  @override
  _SeasonListWidgetState createState() => _SeasonListWidgetState();
}

class _SeasonListWidgetState extends State<SeasonListWidget> {
  var clicked = 0xff808080;

  @override
  Center seasonBarItem({required Season season}) {
    return Center(
      child: Container(
        child: TextButton(
          onPressed: () {
            setState(() {
              clicked = 0xff000000;
            });
          },
          child: Text(
            season.name,
            style: TextStyle(color: Color(clicked)),
          ),
        ),
      ),
    );
  }

  Widget build(BuildContext context) {
    return ListView(
      itemExtent: 75.0,
      scrollDirection: Axis.horizontal,
      children: [
        seasonBarItem(season: venus),
        seasonBarItem(season: helado),
        seasonBarItem(season: year1800s),
        seasonBarItem(season: neon),
        seasonBarItem(season: ritmo),
        seasonBarItem(season: lente),
        seasonBarItem(season: gemas),
      ],
    );
  }
}

class Season<Widget> {
  String name;

  Season(this.name);

  void changeNameColor() {}
}
