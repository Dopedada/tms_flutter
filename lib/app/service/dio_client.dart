import 'package:dio/dio.dart';
import 'package:hive_ce/hive.dart';

class DioClient {
  // 单例模式
  static final DioClient _instance = DioClient._internal();
  factory DioClient() => _instance;

  late Dio _dio;

  DioClient._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: "http://8.146.199.121:9093/",
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        headers: {
          "Content-Type": "application/json",
          "CLIENT": "2",
          "TOKEN": getToken() ?? "",
        },
      ),
    );

    // 添加拦截器
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          print("请求开始：${options.uri}");
          return handler.next(options);
        },
        onResponse: (response, handler) {
          print("请求成功：${response.data}");
          return handler.next(response);
        },
        onError: (error, handler) {
          print("请求失败：${error.message}");
          return handler.next(error);
        },
      ),
    );
  }

  String? getToken() {
    // 从名为 'settings' 的 Hive box 获取 token。
    // 确保在使用 DioClient 之前已在 app 初始化时打开该 box（例如在 main.dart 中）。
    if (Hive.isBoxOpen('settings')) {
      return Hive.box('settings').get('token') as String?;
    }
    return null;
  }

  // GET 请求
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.get(path, queryParameters: queryParameters, options: options);
  }

  // POST 请求
  Future<Response> post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  // PUT 请求
  Future<Response> put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.put(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }

  // DELETE 请求
  Future<Response> delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    return _dio.delete(
      path,
      data: data,
      queryParameters: queryParameters,
      options: options,
    );
  }
}
