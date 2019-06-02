import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Pages/Home/HomePage.dart';
import 'FindPage.dart';
import 'MinePage.dart';

class myPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _myPageState();
  }
}

class _myPageState extends State {
  List<BottomNavigationBarItem> _navigationViews;

  var appBarTitles = ['首页', '发现', '我的'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigationViews = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: const Icon(Icons.home),
        title: Text(appBarTitles[0]),
        backgroundColor: Colors.blue,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.widgets),
        title: Text(appBarTitles[1]),
        backgroundColor: Colors.blue,
      ),
      BottomNavigationBarItem(
        icon: const Icon(Icons.person),
        title: Text(appBarTitles[2]),
        backgroundColor: Colors.blue,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(items: _navigationViews),
        tabBuilder: (content, index) {
          return CupertinoTabView(builder: (content) {
            switch (index) {
              case 0:
                return homePage();
                break;
              case 1:
                return findPage();
                break;
              case 2:
                return minePage();
                break;
              default:
                return Container();
            }
          });
        });
  }
}
