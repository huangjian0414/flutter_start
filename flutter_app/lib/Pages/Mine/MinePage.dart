import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class minePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        child: Center(
          child: Text('暂时没有东西'),
        ),
        navigationBar: CupertinoNavigationBar(
          middle: Text('个人中心'),
          trailing: Text('别看了老弟'),
        ));
  }
}
