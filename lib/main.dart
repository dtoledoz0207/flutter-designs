import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:designs/src/pages/basic_page.dart';
import 'package:designs/src/pages/scroll_page.dart';
import 'package:designs/src/pages/advanced_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent
    ));

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Designs',
      initialRoute: 'advanced',
      routes: {
        'basic': (BuildContext context) => BasicPage(),
        'scroll': (BuildContext context) => ScrollPage(),
        'advanced': (BuildContext context) => AdvancedPage()
      },
    );
  }
}