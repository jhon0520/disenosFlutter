import 'package:diseno/src/page/basico_page.dart';
import 'package:diseno/src/page/botones_page.dart';
import 'package:diseno/src/page/scroll_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños',
      
      initialRoute: 'botones',
      routes: {
        'basico' : (BuildContext context) => BasicoPage(),
        'scroll' : (BuildContext context) => ScrollPage(),
        'botones': (BuildContext context) => BotonesPage(),

      },
    );
  }
}