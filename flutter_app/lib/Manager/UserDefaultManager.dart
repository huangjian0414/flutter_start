import 'package:shared_preferences/shared_preferences.dart';

class UserDefaultManager {

  //存储数据
  static Future saveValue(String key,String value) async {
    SharedPreferences userDefault = await SharedPreferences.getInstance();
    userDefault.setString(key, value);
  }
  //获取数据
  static Future getValue(String key) async {
    SharedPreferences userDefault = await SharedPreferences.getInstance();
    return userDefault.getString(key);
  }
  //删除数据
  static Future deleteValue(String key) async {
    SharedPreferences userDefault = await SharedPreferences.getInstance();
    userDefault.remove(key);
  }

}
