import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';


class AdvancedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _backgroundApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titles(),
                _tableRoundedButtons()
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _backgroundApp() {
    final gradiant = new Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

    final pinkBox = new Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 350.0,
        height: 350.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0)
            ]
          )
        ),
      ),
    );

    return Stack(
      children: <Widget>[
        gradiant,
        Positioned(
          top: -100.0,
          child: pinkBox
        )
      ],
    );
  }

  Widget _titles() {
    return SafeArea (
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Classify transaction', style: TextStyle(color: Colors.white, fontSize: 28.0, fontWeight: FontWeight.bold)),
            SizedBox(height: 10.0),
            Text('Classify this transaction into a particular category', style: TextStyle(color: Colors.white, fontSize: 18.0))
          ],
        ),
      ),
    );
  }

  Widget _tableRoundedButtons() {
    return Table(
      children: <TableRow>[
        TableRow(
          children: <Widget> [
            _createRoundedButton(Colors.blue, Icons.border_all, 'General'),
            _createRoundedButton(Colors.purpleAccent, Icons.directions_bus, 'Bus')
          ]
        ),
        TableRow(
          children: <Widget> [
            _createRoundedButton(Colors.pink, Icons.shop, 'Shop'),
            _createRoundedButton(Colors.orange, Icons.shutter_speed, 'Speed')
          ]
        ),
        TableRow(
          children: <Widget> [
            _createRoundedButton(Colors.green, Icons.android, 'Android'),
            _createRoundedButton(Colors.indigo, Icons.apps, 'Apps')
          ]
        ),
        TableRow(
          children: <Widget> [
            _createRoundedButton(Colors.lightBlue, Icons.archive, 'Archive'),
            _createRoundedButton(Colors.redAccent, Icons.attach_money, 'Money')
          ]
        )
      ],
    );
  }

  Widget _createRoundedButton(Color color, IconData icon, String text) {
    return Container(
      height: 180.0,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Color.fromRGBO(62, 66, 107, 0.7),
        borderRadius: BorderRadius.circular(20.0)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              //SizedBox(height: 5.0),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icon, color: Colors.white, size: 30.0),
              ),
              Text(text, style: TextStyle(color: color)),
              //SizedBox(height: 5.0)
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.pinkAccent,
        textTheme: Theme.of(context).textTheme.copyWith(
          caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
        )
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bubble_chart, size: 30.0),
            title: Container()
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle, size: 30.0),
            title: Container()
          )
        ]
      ),
    );
  }
}