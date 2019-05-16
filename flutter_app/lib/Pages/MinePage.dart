import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class minePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        child: Center(
          child: Text('都是些什么'),
        ),
        navigationBar: CupertinoNavigationBar(
          middle: Text('啥发现'),
          trailing: Text('别看了老弟'),
        ));
  }
}
