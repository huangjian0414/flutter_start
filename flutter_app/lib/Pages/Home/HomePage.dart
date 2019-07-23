import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/Pages/Mine/MinePage.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return CupertinoPageScaffold(
      child: Center(child: Text('主页')),
      navigationBar: CupertinoNavigationBar(
        middle: Text('是主页呀'),
        trailing: CupertinoButton(child: Icon(Icons.add), onPressed: () {
          Navigator.of(context, rootNavigator: true).push(
              CupertinoPageRoute(builder: (BuildContext context) {
                return minePage();
              }));
        }),
      ),
    );
  }
}
