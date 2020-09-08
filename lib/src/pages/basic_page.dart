import 'package:flutter/material.dart';


class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 17.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: Column(
          children: <Widget>[
            
            _createImageBanner(),
            _createTitleSubContent(),
            _createActionButtons(),
            _createDescriptionText(),
            _createDescriptionText(),
            _createDescriptionText(),
            _createDescriptionText()

          ],
        ),
      ),
    );
  }


  Widget _createImageBanner() {
    return Image(
      image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg')
    );
  }

  Widget _createTitleSubContent() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Lago con montañas',
                    style: titleStyle,
                  ),
                  SizedBox(height: 7.0),
                  Text(
                    'Persona sentada en un puente',
                    style: subTitleStyle,
                  )
                ]
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 27.0,),
            Text('42', style: TextStyle(fontSize: 17.0),)
          ]
        ),
      ),
    );
  }

  Widget _createActionButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _actionButton(Icons.call, 'CALL'),
        _actionButton(Icons.near_me, 'ROUTE'),
        _actionButton(Icons.share, 'SHARE')
      ],
    );
  }
  Widget _actionButton(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue, size: 35.0,),
        SizedBox(height: 5.0,),
        Text(text, style: TextStyle(fontSize: 12.0, color: Colors.blue),)
      ],
    );
  }

  Widget _createDescriptionText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
        child: Text(
          'Paint your app to life in milliseconds with Stateful Hot Reload. Use a rich set of fully-customizable widgets to build native interfaces in minutes.Quickly ship features with a focus on native end-user experiences. Layered architecture allows for full customization, which results in incredibly fast rendering and expressive and flexible designs.',
          textAlign: TextAlign.justify,
        )
      ),
    );
  }
}  