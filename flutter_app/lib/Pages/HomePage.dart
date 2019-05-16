import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      child: Center(child: Text('主页')),
      navigationBar: CupertinoNavigationBar(
        middle: Text('是主页呀'),
        trailing: Icon(CupertinoIcons.add),
      ),
    );
  }
}
