import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tms_flutter/app/view/pages/login/login_controller.dart';
import 'package:tms_flutter/app/view/widget/login_text_field.dart';
import 'package:tms_flutter/utils/app_colors.dart';

class Accountloginwidget extends StatefulWidget {
  const Accountloginwidget({super.key});

  @override
  State<StatefulWidget> createState() => _Accountloginwidget();
}

class _Accountloginwidget extends State<Accountloginwidget> {
  late final TextEditingController _phoneController = TextEditingController();
  late final TextEditingController _captchaController = TextEditingController();
  late final TextEditingController _codeController = TextEditingController();

  late final LoginController _loginController;

  @override
  void initState() {
    super.initState();
    _loginController = Get.find<LoginController>();
    // 同步输入到 controller
    _phoneController.addListener(() {
      _loginController.phone.value = _phoneController.text;
    });
    _captchaController.addListener(() {
      _loginController.imgCode.value = _captchaController.text;
    });
    _codeController.addListener(() {
      _loginController.password.value = _codeController.text;
    });
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _captchaController.dispose();
    _codeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LoginTextField(title: "账号", controller: _phoneController),
        const SizedBox(height: 20),
        LoginTextField(
          title: "图形验证码",
          maxLength: 4,
          controller: _captchaController,
          child: Obx(
            () => GestureDetector(
              onTap: _loginController.refreshVerifyCode,
              child: Container(
                width: 90,
                height: 48,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [AppColors.ColorC1C1C1, AppColors.ColorF7F7F7],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _loginController.isLoadingVerifyCode
                    ? const Center(
                        child: SizedBox(
                          width: 24,
                          height: 24,
                          child: CircularProgressIndicator(strokeWidth: 2),
                        ),
                      )
                    : _loginController.verifyCodeImg != null
                    ? Image.memory(
                        _loginController.verifyCodeImg!,
                        fit: BoxFit.contain,
                      )
                    : const Center(
                        child: Text('点击刷新', style: TextStyle(fontSize: 12)),
                      ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        LoginTextField(
          title: "密码",
          obscureText: true,
          controller: _codeController,
        ),
      ],
    );
  }
}
