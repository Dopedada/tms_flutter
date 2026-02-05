import 'package:tms_flutter/app/model/api_response.dart';
import 'package:tms_flutter/app/model/verify_code_data.dart';
import 'package:tms_flutter/app/service/dio_client.dart';

/// API 服务类
class ApiService {
  final _dioClient = DioClient();

  /// 获取图片验证码
  Future<ApiResponse<VerifyCodeData>> getVerifyCode() async {
    try {
      final response = await _dioClient.get('tms/login/imgCode');
      return ApiResponse<VerifyCodeData>.fromJson(
        response.data as Map<String, dynamic>,
        (data) => VerifyCodeData.fromJson(data as Map<String, dynamic>),
      );
    } catch (e) {
      return ApiResponse<VerifyCodeData>(
        code: -1,
        data: null,
        desc: '获取验证码失败: $e',
        status: false,
        total: null,
      );
    }
  }

  /// 登录
  Future<ApiResponse<Map<String, dynamic>>> login({
    required String account,
    required String password,
    required String imgCode,
    required String verifyKey,
  }) async {
    try {
      final response = await _dioClient.post(
        'tms/login/login',
        data: {
          'account': account,
          'password': password,
          'imgCode': imgCode,
          'verifyKey': verifyKey,
        },
      );

      return ApiResponse<Map<String, dynamic>>.fromJson(
        response.data as Map<String, dynamic>,
        (data) => data as Map<String, dynamic>,
      );
    } catch (e) {
      return ApiResponse<Map<String, dynamic>>(
        code: -1,
        data: null,
        desc: '登录请求失败: $e',
        status: false,
        total: null,
      );
    }
  }

  
}
