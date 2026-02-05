import 'package:json_annotation/json_annotation.dart';

part 'verify_code_data.g.dart';

@JsonSerializable()
class VerifyCodeData {
  /// 验证码图片（Base64 或 URL）
  final String img;

  /// 验证码 Key
  final String verifyKey;

  VerifyCodeData({required this.img, required this.verifyKey});

  factory VerifyCodeData.fromJson(Map<String, dynamic> json) =>
      _$VerifyCodeDataFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyCodeDataToJson(this);
}
