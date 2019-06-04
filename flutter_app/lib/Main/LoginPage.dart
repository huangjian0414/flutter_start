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
      backgroundColor: Color(0xFF63BBF7),
      child:
        Stack(children: <Widget>[
          Positioned(child: Text('000000',textAlign: TextAlign.center,),left: 0,right: 0,top: 100),
          Positioned(child: Text('1234566'),left: 0,right: 0,top: 300),
          Positioned(child: Image(image: AssetImage('Images/登录背景.png')),left: 0,right: 0,bottom: 0,),
          Column(
            children: <Widget>[
              Container(
                child: Text('hkbksgak'), margin: EdgeInsets.only(top: 0),),
              Container(child: Text('hk999999'),
                margin: EdgeInsets.only(top: 200),
                alignment: Alignment.bottomCenter,)
            ],)
        ],)
      ,);
  }
}

