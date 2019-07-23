import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Pages/Home/HomePage.dart';
import 'package:flutter_app/Pages/Find/FindPage.dart';
import 'package:flutter_app/Pages/Mine/MinePage.dart';

class tabbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return tabbarState();
  }

}

class tabbarState extends State {
  @override
  Widget build(BuildContext context) {

    var appBarTitles = ['首页', '发现', '我的'];

    List<BottomNavigationBarItem> _navigationViews = [
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


    // TODO: implement build
    return CupertinoTabScaffold(tabBar: CupertinoTabBar(
        items: _navigationViews),
        tabBuilder: (context,index){
              return CupertinoTabView(builder: (context){
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
              },);
        });
  }

}