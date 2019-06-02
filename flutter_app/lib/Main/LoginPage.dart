import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class LoginPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new LoginPageState();
  }

}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CupertinoPageScaffold(
        child: Container(child: Image(
          image: new AssetImage('Images/登录背景.png'),
          height: 200,),
          padding: new EdgeInsets.only(left: 0, right: 0),
          alignment: Alignment.bottomCenter,)
    );
  }
}