import 'package:dio/dio.dart';
import 'Api.dart';

enum HttpType { kGet, kPost, kPut, kDelete }

class HttpTool {
  factory HttpTool() => _sharedInstance();

  static HttpTool _instance;

  HttpTool._() {
    // 初始化
    dio = new Dio();
    BaseOptions options = new BaseOptions(
        baseUrl: Api.BaseUrl,
        connectTimeout: ConnectTime,
        receiveTimeout: ReceiveTime);
  }

  static Dio dio;
  
  static const int ConnectTime = 10000;
  static const int ReceiveTime = 3000;

  static HttpTool _sharedInstance() {
    if (_instance == null) {
      _instance = HttpTool._();
    }
    return _instance;
  }

  static void request(String url,Map<String, dynamic> data, String method,Map<String, dynamic> headers,Function success,Function failure) async {

    try {
      Response response = await dio.request(url, data: data ?? {} ,options: new Options(method: method ?? 'get',headers: headers ?? {}));
      if (success != null){
        success(response.data);
        print(response.data)
      }
    } catch (exception){
        if (failure != null){
          failure(exception);
        }
    }


  }
}
