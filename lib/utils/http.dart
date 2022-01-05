import 'package:dio/dio.dart';
import '../configs/http.config.dart';

class Http {
  static Http? _instance;
  factory Http() => _getInstance();
  static Http get instance => _getInstance();
  static late final Dio dio;

  static Http _getInstance() {
    return _instance ?? Http._internal();
  }

  Http._internal() {
    // 命名构造函数
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: timeout,
      receiveTimeout: timeout,
    );

    dio = Dio(options);
  }

  /// get请求
  Future get(String url, {Map<String, Object>? data}) async {
    final response = await dio.get(url, queryParameters: data);
    return response.data;
  }

  /// post请求
  Future post(String url, {Map<String, Object>? data}) async {
    final response = await dio.post(url, data: data);
    return response.data;
  }
}
