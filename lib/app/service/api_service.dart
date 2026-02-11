import 'package:dio/dio.dart';
import 'package:get/get_connect/http/src/multipart/form_data.dart';
import 'package:tms_flutter/app/model/api_response.dart';
import 'package:tms_flutter/app/model/home_list_entity.dart';
import 'package:tms_flutter/app/model/logistics_login_dto.dart';
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
  Future<ApiResponse<LoginResponse>> login({
    required String account,
    required String password,
    required String imgCode,
    required String verifyKey,
  }) async {
    try {
      final response = await _dioClient.post(
        'tms/login/doLogin',
        data: {
          'loginName': account,
          'pwd': password,
          'verifyCode': imgCode,
          'verifyKey': verifyKey,
        },
      );

      return ApiResponse<LoginResponse>.fromJson(
        response.data as Map<String, dynamic>,
        (data) => LoginResponse.fromJson(data as Map<String, dynamic>),
      );
    } catch (e) {
      return ApiResponse<LoginResponse>(
        code: -1,
        data: null,
        desc: '登录请求失败: $e',
        status: false,
        total: null,
      );
    }
  }

  Future<ApiResponse<List<HomeListEntity>>> getHomeData() async {
    try {
      final response = await _dioClient.postEncoded(
        'v2/driver/select/doSearchByForm',
        data: {
          "formId": "3000117",
          "statusId": "1",
          "start": "0",
          "length": "40",
        },
      );
      return ApiResponse<List<HomeListEntity>>.fromJson(
        response.data as Map<String, dynamic>,
        // 正确的转换器：遍历列表，将每个Map转为HomeListEntity
        (data) => (data as List<dynamic>)
            .map(
              (item) => HomeListEntity.fromJson(item as Map<String, dynamic>),
            )
            .toList(),
      );
    } catch (e) {
      return ApiResponse<List<HomeListEntity>>(
        code: -1,
        data: null,
        desc: '登出请求失败: $e',
        status: false,
        total: null,
      );
    }
  }
}
