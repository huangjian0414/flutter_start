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

  final _nameControl = TextEditingController();
  final _pwdControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      backgroundColor: Color(0xFF63BBF7),
      body:
      Stack(children: <Widget>[
        Positioned(
          child: Image(image: AssetImage('Images/登录背景.png')),
          left: 0,
          right: 0,
          bottom: 0,),
        Column(children: <Widget>[Container(child: Image(
          image: AssetImage('Images/公司LOGO.png'),
          width: 185,
          height: 25,),
          margin: EdgeInsets.only(top: 142),
          alignment: Alignment.topCenter,),
          Container(child: TextField(controller: _nameControl,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone, color: Color(0xFFFFFFFF),),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)))),),
            margin: EdgeInsets.only(left: 36, top: 60, right: 36),),
          Container(child: TextField(controller: _pwdControl,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.print, color: Color(0xFFFFFFFF),),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)))),),
            margin: EdgeInsets.only(left: 36, top: 20, right: 36),)

        ],),


      ],)
      ,);
  }
}

