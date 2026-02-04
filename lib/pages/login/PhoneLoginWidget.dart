import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:tms_flutter/utils/AppColors.dart';
import 'package:tms_flutter/widget/LoginTextField.dart';

class PhoneLoginWidget extends StatefulWidget {
  @Preview()
  const PhoneLoginWidget({super.key});

  @override
  State<StatefulWidget> createState() => _PhoneLoginWidget();
}

class _PhoneLoginWidget extends State<PhoneLoginWidget> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LoginTextField(
          title: "手机号",
          controller: _textController,
          keyboardType: TextInputType.phone,
          inputFormatters: [MaskTextInputFormatter(mask: "###-####-####")],
        ),
        const SizedBox(height: 20),
        LoginTextField(
          title: "图形验证码",
          maxLength: 4,
          controller: _textController,
          child: Container(
            width: 90,
            height: 48,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.ColorC1C1C1, AppColors.ColorF7F7F7],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 20),
        LoginTextField(title: "验证码", maxLength: 4, controller: _textController),
      ],
    );
  }
}
