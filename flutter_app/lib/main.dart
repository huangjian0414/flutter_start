import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
//import 'Pages/MainPage.dart';
import 'Main/LoginPage.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}
