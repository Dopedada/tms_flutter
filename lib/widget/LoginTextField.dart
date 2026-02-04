import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widget_previews.dart';

class LoginTextField extends StatefulWidget {
  final String title;
  final String? hint;
  final TextEditingController? controller;
  final TextInputType keyboardType;
  //[MaskTextInputFormatter(mask: "###-####-####")]
  final List<TextInputFormatter>? inputFormatters;
  final int? maxLength;
  final Widget? child;

  @Preview()
  const LoginTextField({
    super.key,
    this.title = "手机号",
    this.hint,
    this.controller,
    this.keyboardType = TextInputType.text,
    this.inputFormatters,
    this.maxLength,
    this.child,
  });

  @override
  State<StatefulWidget> createState() => _LoginTextField();
}

class _LoginTextField extends State<LoginTextField> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              widget.title,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            TextField(
              maxLength: widget.maxLength,
              controller: widget.controller,
              inputFormatters: widget.inputFormatters,
              keyboardType: widget.keyboardType,
              decoration: InputDecoration(
                hintText: widget.hint ?? "请输入${widget.title}",
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 0.5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey[300]!, width: 0.5),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 0.8,
                  ), // 聚焦时加粗+变色
                ),
                counterText: "",
              ),
              style: TextStyle(fontSize: 14),
            ),
          ],
        ),

        // Container(
        //                 width: 90,
        //                 height: 48,
        //                 decoration: BoxDecoration(
        //                   gradient: LinearGradient(
        //                     colors: [AppColors.ColorC1C1C1, AppColors.ColorF7F7F7],
        //                   ),
        //                   borderRadius: BorderRadius.circular(8),
        //                 ),
        //               ),
        if (widget.child != null)
          Positioned(
            right: 0,
            child: GestureDetector(
              // onTap: _refreshCaptcha,
              child: widget.child!,
            ),
          ),
      ],
    );
  }
}
