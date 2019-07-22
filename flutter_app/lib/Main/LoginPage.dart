import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Http/HttpTool.dart';
import 'package:flutter_app/Http/HttpRequest.dart';
import 'package:flutter_app/Model/ResponseModel.dart';
import 'dart:convert';

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
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)))),
            style: TextStyle(color: Colors.white),),
            margin: EdgeInsets.only(left: 36, top: 60, right: 36),),
          Container(child: TextField(controller: _pwdControl,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.print, color: Color(0xFFFFFFFF),),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0xFFFFFFFF)))),
            style: TextStyle(color: Colors.white),
            obscureText: true,),
            margin: EdgeInsets.only(left: 36, top: 20, right: 36),),
          Container(child: CupertinoButton(child: Text("登录",
            style: TextStyle(color: Colors.blue),),
            onPressed: () {
              //登录
              login();
            }, color: Colors.white,
            borderRadius: BorderRadius.circular(25),),
            margin: EdgeInsets.only(top: 40), width: 240, height: 50,)

        ],),


      ],)
      ,resizeToAvoidBottomPadding: false,);//防止键盘顶起背景图
  }
  void login(){
        String account = _nameControl.text;
        String pwd = _pwdControl.text;
        if (account.length == 0){
          print("账号不能为空");
          return;
        }
        if (pwd.length == 0){
          print("密码不能为空");
          return;
        }
        HttpRequest req = HttpRequest();
        req.url = '/enduser/verCode/';
        req.type = HttpType.kPost;
        req.params = {'app_id':'0b4c4e80f73f11e7804bfa163e431402','vc_type':0,'login_name':'18321937749'};
        HttpTool().sendRequest(req, (data){
          Map responseMap = jsonDecode(data);
          var user = ResponseModel.fromJson(responseMap);

          print(user.meta.message);
          print(data);
        }, (error){

        });
  }
}

