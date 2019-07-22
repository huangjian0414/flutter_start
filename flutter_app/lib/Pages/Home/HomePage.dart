import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/Http/HttpTool.dart';
import 'package:flutter_app/Http/HttpRequest.dart';
import 'package:flutter_app/Model/ResponseModel.dart';
import 'dart:convert';
class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {



    //单个请求
//    HttpRequest req = HttpRequest();
//    req.url = '/enduser/verCode/';
//    req.type = HttpType.kPost;
//    req.params = {'app_id':'0b4c4e80f73f11e7804bfa163e431402','vc_type':0,'login_name':'18321937749'};
//    HttpTool().sendRequest(req, (data){
//      Map responseMap = jsonDecode(data);
//      var user = ResponseModel.fromJson(responseMap);
//
//      print(user.meta.message);
//      print(data);
//    }, (error){
//
//    });


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
