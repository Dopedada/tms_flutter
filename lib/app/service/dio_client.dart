import 'package:dio/dio.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:hive_ce/hive.dart';
import 'package:tms_flutter/app/constants/storage_constants.dart';
import 'package:tms_flutter/utils/hive_utils.dart';

import '../constants/route_constants.dart';

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
          "TOKEN": "",
        },
      ),
    );

    // 添加拦截器
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          final token = getToken();
          if (token != null && token.isNotEmpty) {
            options.headers["TOKEN"] = token;
          }
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // logger.e(response.data);
          if (response.data != null) {
            final code = response.data['code'] ?? 0;
            // 匹配账号异地登录的场景
            if (code == -99) {
              // 1. 清空本地Token（可选，避免下次请求仍带失效Token）
              HiveUtils.removeUserToken();
              // 2. 跳转到登录页并销毁所有页面
              Get.offAllNamed(RouteConstants.login);
            }
          }
          return handler.next(response);
        },
        onError: (error, handler) {
          return handler.next(error);
        },
      ),
    );
  }

  String? getToken() {
    try {
      bool isOpen = Hive.isBoxOpen(StorageConstants.userBox);
      if (isOpen) {
        var box = Hive.box(StorageConstants.userBox);
        String? token = box.get(StorageConstants.userToken) as String?;
        return token;
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
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

  // POST 请求
  Future<Response> postEncoded(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return _dio.post(
      path,
      data: data,
      queryParameters: queryParameters,
      options: Options(contentType: Headers.formUrlEncodedContentType),
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
