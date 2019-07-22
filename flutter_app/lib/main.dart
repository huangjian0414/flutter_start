import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
//import 'Pages/MainPage.dart';
import 'Main/LoginPage.dart';
import 'package:flutter_app/Http/HttpTool.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpTool().setConfig('https://cnapi.fogcloud.io/v3_1', 10); //全局配置host,timeout

    return MaterialApp(
      home: LoginPage(),
    );
  }
}
