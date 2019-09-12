import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Http/HttpTool.dart';
import 'package:flutter_app/Http/HttpRequest.dart';
import 'package:flutter_app/Model/ResponseModel.dart';
import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_app/Main/TabBar.dart';
import 'package:flutter_app/Manager/UserDefaultManager.dart';
import 'package:flutter_app/Http/Api.dart';

class LoginPage extends StatefulWidget {
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

    TextField nameField = TextField(
      controller: _nameControl,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.phone,
            color: Color(0xFFFFFFFF),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF)))),
      style: TextStyle(color: Colors.white),
    );

    TextField pwdField = TextField(
      controller: _pwdControl,
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.print,
            color: Color(0xFFFFFFFF),
          ),
          enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF))),
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(color: Color(0xFFFFFFFF)))),
      style: TextStyle(color: Colors.white),
      obscureText: true,
    );

    CupertinoButton loginBtn = CupertinoButton(
      child: Text(
        "登录",
        style: TextStyle(color: Colors.blue),
      ),
      onPressed: () {
        //登录
        login();
      },
      color: Colors.white,
      borderRadius: BorderRadius.circular(25),
    );
    return GestureDetector(onTap: () {
      FocusScope.of(context).requestFocus(FocusNode()); //点击空白收起键盘
    },
        child: Scaffold(
          backgroundColor: Color(0xFF63BBF7),
          body: Stack(
            children: <Widget>[
              Positioned(
                child: Image(image: AssetImage('Images/登录背景.png')),
                left: 0,
                right: 0,
                bottom: 0,
              ),
              Column(
                children: <Widget>[
                  Container(
                    child: Image(
                      image: AssetImage('Images/公司LOGO.png'),
                      width: 185,
                      height: 25,
                    ),
                    margin: EdgeInsets.only(top: 142),
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    child: nameField,
                    margin: EdgeInsets.only(left: 36, top: 60, right: 36),
                  ),
                  Container(
                    child: pwdField,
                    margin: EdgeInsets.only(left: 36, top: 20, right: 36),
                  ),
                  Container(
                    child: loginBtn,
                    margin: EdgeInsets.only(top: 40),
                    width: 240,
                    height: 50,
                  )
                ],
              ),
            ],
          ),
          resizeToAvoidBottomPadding: false, //防止键盘顶起背景图)
        )
    );
  }
  //登录
  void login() {
    String account = _nameControl.text;
    String pwd = _pwdControl.text;
    if (account.length == 0) {
      Fluttertoast.showToast(msg: "账号不能为空", gravity: ToastGravity.CENTER);
      return;
    }
    if (pwd.length == 0) {
      Fluttertoast.showToast(msg: "密码不能为空", gravity: ToastGravity.CENTER);
      return;
    }
    Fluttertoast.showToast(
        msg: "登录。。。。", timeInSecForIos: 5, gravity: ToastGravity.CENTER);

    //网络请求再包一层业务请求..........暂时没搞
    HttpRequest req = HttpRequest();
    req.url = '/enduser/verCode/';
    req.type = HttpType.kPost;
    req.params = {
      'app_id': '0b4c4e80f73f11e7804bfa163e431402',
      'vc_type': 0,
      'login_name': '183211'
    };
    HttpTool().sendRequest(req, (data) {
      Map responseMap = jsonDecode(data);
      var user = ResponseModel.fromJson(responseMap);
      print("hehehe" + user.meta.message);
      Fluttertoast.cancel();
    }, (error) {
      print("error ---");
      Fluttertoast.cancel();
    });
    //假装一下登录 存储
    UserDefaultManager.getValue(account).then((value){
      setState(() {
        print("1111"+value.toString());
        if (value == null){
          UserDefaultManager.saveValue(account, pwd).then((v){
            Future.delayed(Duration(seconds: 3), () {
              runApp(resetApp());
            });
          });
        }else{
          String v = value.toString();
          if (v == pwd){
            Future.delayed(Duration(seconds: 3), () {
              runApp(resetApp());
            });
          }else{
            Fluttertoast.showToast(
                msg: "密码错误", timeInSecForIos: 2, gravity: ToastGravity.CENTER);
          }
        }
      });
    });
  }
}

class resetApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    HttpTool()
        .setConfig(Api.BaseUrl, 10); //全局配置host,timeout

    return MaterialApp(
      home: tabbar(),
    );
  }
}
