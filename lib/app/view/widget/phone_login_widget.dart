import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tms_flutter/core/utils/app_colors.dart';
import 'package:tms_flutter/app/view/widget/login_text_field.dart';
import 'package:flutter/widget_previews.dart';
import 'package:get/get.dart';
import 'package:tms_flutter/app/view/pages/login/login_controller.dart';

class PhoneLoginWidget extends StatefulWidget {
  @Preview()
  const PhoneLoginWidget({super.key});

  @override
  State<StatefulWidget> createState() => _PhoneLoginWidget();
}

class _PhoneLoginWidget extends State<PhoneLoginWidget> {
  late final TextEditingController _phoneController = TextEditingController();
  late final TextEditingController _captchaController = TextEditingController();
  late final TextEditingController _codeController = TextEditingController();

  late final LoginController _loginController;

  @override
  void initState() {
    super.initState();
    _loginController = Get.find<LoginController>();
    // 将输入内容同步到 controller 的 reactive 字段
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
        LoginTextField(
          title: "手机号",
          controller: _phoneController,
          keyboardType: TextInputType.phone,
          inputFormatters: [MaskTextInputFormatter(mask: "###-####-####")],
        ),
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
        LoginTextField(title: "验证码", maxLength: 4, controller: _codeController),
      ],
    );
  }
}
