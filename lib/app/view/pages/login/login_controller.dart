import 'package:get/get.dart';
import 'package:tms_flutter/app/constants/route_constants.dart';
import 'package:tms_flutter/app/service/api_service.dart';
import 'dart:convert';
import 'dart:typed_data';
import 'package:tms_flutter/utils/hive_utils.dart';

import 'package:tms_flutter/core/base/base_controller.dart';

class LoginController extends BaseController {
  final Rx<int> _index = Rx<int>(0);

  int get index => _index.value;

  final Rx<Uint8List?> _verifyCodeImg = Rx<Uint8List?>(null);

  Uint8List? get verifyCodeImg => _verifyCodeImg.value;

  final Rx<String?> _verifyKey = Rx<String?>(null);

  String? get verifyKey => _verifyKey.value;

  final Rx<bool> _isLoadingVerifyCode = Rx<bool>(false);

  bool get isLoadingVerifyCode => _isLoadingVerifyCode.value;

  final Rx<bool> _isLoggingIn = Rx<bool>(false);

  bool get isLoggingIn => _isLoggingIn.value;

  final _apiService = ApiService();

  // 存储表单输入，方便从页面不同 widget 更新并在 login() 使用
  final Rx<String> phone = Rx<String>('');
  final Rx<String> imgCode = Rx<String>('');
  final Rx<String> password = Rx<String>('');

  @override
  void onInit() {
    super.onInit();
    _getVerifyCode();
  }

  Future<void> _getVerifyCode() async {
    _isLoadingVerifyCode.value = true;
    try {
      final response = await _apiService.getVerifyCode();
      if (response.data != null) {
        final verifyCodeData = response.data!;
        _verifyCodeImg.value = base64Decode(verifyCodeData.img);
        _verifyKey.value = verifyCodeData.verifyKey;
      } else {
        showToast('获取验证码失败: ${response.desc}');
      }
    } catch (e) {
      showToast('验证码加载错误: $e');
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

  Future<void> login() async {
    final _phone = phone.value.trim();
    final _imgCode = imgCode.value.trim();
    final _password = password.value;
    final _key = verifyKey;

    if (_phone.isEmpty || _imgCode.isEmpty || _password.isEmpty) {
      showToast('请填写完整信息');
      return;
    }
    if (_key == null) {
      showToast('验证码 key 缺失，请刷新重试');
      return;
    }

    _isLoggingIn.value = true;

    final response = await _apiService.login(
      account: _phone,
      password: _password,
      imgCode: _imgCode,
      verifyKey: _key,
    );
    _isLoggingIn.value = false;
    if (!response.status || response.data?.token == null) {
      showToast(response.desc);
      refreshVerifyCode();
      return;
    }
    Map<String, dynamic>? jm = response.data?.toJson();
    String s = json.encode(jm);
    await HiveUtils.saveUserInfo(s);
    await HiveUtils.saveUserToken(response.data!.token!);
    showToast('登录成功');
    Get.offNamed(RouteConstants.main);
  }
}
