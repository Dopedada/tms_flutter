import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

/// 全局通用的 Fluttertoast 封装
class ToastUtil {
  ToastUtil._();

  /// 显示基础 toast
  static Future<void> show(
    String message, {
    ToastGravity gravity = ToastGravity.BOTTOM,
    Toast toastLength = Toast.LENGTH_SHORT,
    Color? backgroundColor,
    Color? textColor,
    double fontSize = 14.0,
    int timeInSecForIosWeb = 2,
  }) async {
    await Fluttertoast.showToast(
      msg: message,
      toastLength: toastLength,
      gravity: gravity,
      timeInSecForIosWeb: timeInSecForIosWeb,
      backgroundColor: backgroundColor ?? Colors.black87,
      textColor: textColor ?? Colors.white,
      fontSize: fontSize,
    );
  }

  /// 成功样式
  static Future<void> success(String message) async {
    await show(
      message,
      backgroundColor: Colors.green[700],
      textColor: Colors.white,
    );
  }

  /// 错误样式
  static Future<void> error(String message) async {
    await show(
      message,
      backgroundColor: Colors.red[700],
      textColor: Colors.white,
    );
  }

  /// 信息样式（浅色背景）
  static Future<void> info(String message) async {
    await show(
      message,
      backgroundColor: Colors.blueGrey[800],
      textColor: Colors.white,
    );
  }
}
