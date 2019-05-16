import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class findPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
      child: Center(
        child: Text('发现了啥'),
      ),
      navigationBar: CupertinoNavigationBar(
        middle: Text('发现了吗'),
        trailing: Text('再见老弟'),
      ),
    );
  }
}
