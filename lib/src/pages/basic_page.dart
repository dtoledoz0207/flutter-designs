import 'package:flutter/material.dart';


class BasicPage extends StatelessWidget {

  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 17.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image(image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg')),

          Container(
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
          )
        ],
      ),
    );
  }
}  