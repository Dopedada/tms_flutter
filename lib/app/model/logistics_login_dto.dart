import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'logistics_login_dto.g.dart';

LoginResponse loginResponseFromJson(String str) =>
    LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

@JsonSerializable()
class LoginResponse {
  LoginResponse({this.logisticsLoginDto, this.token});

  LogisticsLoginDto? logisticsLoginDto;
  String? token;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class LogisticsLoginDto {
  LogisticsLoginDto({
    this.enterprise,
    this.length,
    this.logistics,
    this.logisticsRole,
    this.logisticsUser,
    this.modId,
    this.module,
    this.start,
  });

  Enterprise? enterprise;
  int? length;
  Logistics? logistics;
  LogisticsRole? logisticsRole;
  LogisticsUser? logisticsUser;
  int? modId;
  String? module;
  int? start;

  factory LogisticsLoginDto.fromJson(Map<String, dynamic> json) =>
      _$LogisticsLoginDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LogisticsLoginDtoToJson(this);
}

@JsonSerializable()
class Enterprise {
  Enterprise({
    this.address,
    this.businessLicense,
    this.businessScope,
    this.capital,
    this.company,
    this.createDate,
    this.deleteFlag,
    this.enterpriseCode,
    this.enterpriseId,
    this.idcardFront,
    this.idcardReverse,
    this.legal,
    this.length,
    this.modId,
    this.module,
    this.start,
    this.telephone,
    this.updateTime,
    this.updateUserId,
  });

  String? address;
  String? businessLicense;
  String? businessScope;
  double? capital;
  String? company;
  String? createDate;
  int? deleteFlag;
  String? enterpriseCode;
  int? enterpriseId;
  String? idcardFront;
  String? idcardReverse;
  String? legal;
  int? length;
  int? modId;
  String? module;
  int? start;
  String? telephone;
  String? updateTime;
  int? updateUserId;

  factory Enterprise.fromJson(Map<String, dynamic> json) =>
      _$EnterpriseFromJson(json);
  Map<String, dynamic> toJson() => _$EnterpriseToJson(this);
}

@JsonSerializable()
class Logistics {
  Logistics({
    this.createTime,
    this.deleteFlag,
    this.enterpriseId,
    this.length,
    this.logisticsAlias,
    this.logisticsBankAccount,
    this.logisticsBankId,
    this.logisticsConnector,
    this.logisticsConnectorTel,
    this.logisticsId,
    this.logisticsName,
    this.logisticsStatus,
    this.modId,
    this.module,
    this.start,
    this.updateId,
    this.updateTime,
    this.updateUser,
  });

  String? createTime;
  int? deleteFlag;
  int? enterpriseId;
  int? length;
  String? logisticsAlias;
  String? logisticsBankAccount;
  int? logisticsBankId;
  String? logisticsConnector;
  String? logisticsConnectorTel;
  int? logisticsId;
  String? logisticsName;
  int? logisticsStatus;
  int? modId;
  String? module;
  int? start;
  int? updateId;
  String? updateTime;
  String? updateUser;

  factory Logistics.fromJson(Map<String, dynamic> json) =>
      _$LogisticsFromJson(json);

  Map<String, dynamic> toJson() => _$LogisticsToJson(this);
}

@JsonSerializable()
class LogisticsRole {
  LogisticsRole({
    this.length,
    this.logisticsId,
    this.modId,
    this.module,
    this.roleDesc,
    this.roleId,
    this.roleName,
    this.start,
  });

  int? length;
  int? logisticsId;
  int? modId;
  String? module;
  String? roleDesc;
  int? roleId;
  String? roleName;
  int? start;

  factory LogisticsRole.fromJson(Map<String, dynamic> json) =>
      _$LogisticsRoleFromJson(json);

  Map<String, dynamic> toJson() => _$LogisticsRoleToJson(this);
}

@JsonSerializable()
class LogisticsUser {
  LogisticsUser({
    this.createId,
    this.createName,
    this.createTime,
    this.deleteFlag,
    this.firstLogin,
    this.length,
    this.logisticsId,
    this.logisticsRoleId,
    this.logisticsUserId,
    this.modId,
    this.module,
    this.start,
    this.updateTime,
    this.updateUserId,
    this.updateUserName,
    this.userFlag,
    this.userIdentityId,
    this.userImage,
    this.userLoginName,
    this.userMobile,
    this.userName,
    this.userPwd,
    this.userTime,
  });

  int? createId;
  String? createName;
  String? createTime;
  int? deleteFlag;
  int? firstLogin;
  int? length;
  int? logisticsId;
  int? logisticsRoleId;
  int? logisticsUserId;
  int? modId;
  String? module;
  int? start;
  String? updateTime;
  int? updateUserId;
  String? updateUserName;
  int? userFlag;
  int? userIdentityId;
  String? userImage;
  String? userLoginName;
  String? userMobile;
  String? userName;
  String? userPwd;
  String? userTime;

  factory LogisticsUser.fromJson(Map<String, dynamic> json) =>
      _$LogisticsUserFromJson(json);

  Map<String, dynamic> toJson() => _$LogisticsUserToJson(this);
}
