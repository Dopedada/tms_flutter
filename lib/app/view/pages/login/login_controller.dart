import 'package:get/get.dart';
import 'package:tms_flutter/app/service/api_service.dart';
import 'dart:convert';
import 'dart:typed_data';

class LoginController extends GetxController {
  final Rx<int> _index = Rx<int>(0);
  int get index => _index.value;

  final Rx<Uint8List?> _verifyCodeImg = Rx<Uint8List?>(null);
  Uint8List? get verifyCodeImg => _verifyCodeImg.value;

  final Rx<bool> _isLoadingVerifyCode = Rx<bool>(false);
  bool get isLoadingVerifyCode => _isLoadingVerifyCode.value;

  final Rx<String?> _errorMsg = Rx<String?>(null);
  String? get errorMsg => _errorMsg.value;

  final Rx<bool> _isLoggingIn = Rx<bool>(false);
  bool get isLoggingIn => _isLoggingIn.value;

  final _apiService = ApiService();

  @override
  void onInit() {
    super.onInit();
    _getVerifyCode();
  }

  Future<void> _getVerifyCode() async {
    _isLoadingVerifyCode.value = true;
    _errorMsg.value = null;
    try {
      final response = await _apiService.getVerifyCode();
      if (response.data != null) {
        final verifyCodeData = response.data!;
        _verifyCodeImg.value = base64Decode(verifyCodeData.img);
      } else {
        _errorMsg.value = '获取验证码失败: ${response.desc}';
      }
    } catch (e) {
      _errorMsg.value = '验证码加载错误: $e';
    } finally {
      _isLoadingVerifyCode.value = false;
    }
  }

  void changeIndex(int newIndex) {
    _index.value = newIndex;
    // 切换到手机号登录时重新加载验证码
    // if (newIndex == 0) {
    //   _getVerifyCode();
    // }
  }

  void refreshVerifyCode() {
    _getVerifyCode();
  }

  Future<void> login(String phone, String captcha, String code) async {
    // 表单验证
    if (phone.isEmpty || captcha.isEmpty || code.isEmpty) {
      _errorMsg.value = '请填写完整信息';
      return;
    }

    _isLoggingIn.value = true;
    _errorMsg.value = null;
    try {
      // 调用登录 API
      // final response = await _apiService.login(phone, captcha, code);
      // 示例：这里需要根据实际 API 实现
      // 成功登录后的导航逻辑
    } catch (e) {
      _errorMsg.value = '登录失败: $e';
    } finally {
      _isLoggingIn.value = false;
    }
  }
}
