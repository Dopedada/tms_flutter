// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logistics_login_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) =>
    LoginResponse(
      logisticsLoginDto: json['logisticsLoginDto'] == null
          ? null
          : LogisticsLoginDto.fromJson(
              json['logisticsLoginDto'] as Map<String, dynamic>,
            ),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'logisticsLoginDto': instance.logisticsLoginDto,
      'token': instance.token,
    };

LogisticsLoginDto _$LogisticsLoginDtoFromJson(
  Map<String, dynamic> json,
) => LogisticsLoginDto(
  enterprise: json['enterprise'] == null
      ? null
      : Enterprise.fromJson(json['enterprise'] as Map<String, dynamic>),
  length: (json['length'] as num?)?.toInt(),
  logistics: json['logistics'] == null
      ? null
      : Logistics.fromJson(json['logistics'] as Map<String, dynamic>),
  logisticsRole: json['logisticsRole'] == null
      ? null
      : LogisticsRole.fromJson(json['logisticsRole'] as Map<String, dynamic>),
  logisticsUser: json['logisticsUser'] == null
      ? null
      : LogisticsUser.fromJson(json['logisticsUser'] as Map<String, dynamic>),
  modId: (json['modId'] as num?)?.toInt(),
  module: json['module'] as String?,
  start: (json['start'] as num?)?.toInt(),
);

Map<String, dynamic> _$LogisticsLoginDtoToJson(LogisticsLoginDto instance) =>
    <String, dynamic>{
      'enterprise': instance.enterprise,
      'length': instance.length,
      'logistics': instance.logistics,
      'logisticsRole': instance.logisticsRole,
      'logisticsUser': instance.logisticsUser,
      'modId': instance.modId,
      'module': instance.module,
      'start': instance.start,
    };

Enterprise _$EnterpriseFromJson(Map<String, dynamic> json) => Enterprise(
  address: json['address'] as String?,
  businessLicense: json['businessLicense'] as String?,
  businessScope: json['businessScope'] as String?,
  capital: (json['capital'] as num?)?.toDouble(),
  company: json['company'] as String?,
  createDate: json['createDate'] as String?,
  deleteFlag: (json['deleteFlag'] as num?)?.toInt(),
  enterpriseCode: json['enterpriseCode'] as String?,
  enterpriseId: (json['enterpriseId'] as num?)?.toInt(),
  idcardFront: json['idcardFront'] as String?,
  idcardReverse: json['idcardReverse'] as String?,
  legal: json['legal'] as String?,
  length: (json['length'] as num?)?.toInt(),
  modId: (json['modId'] as num?)?.toInt(),
  module: json['module'] as String?,
  start: (json['start'] as num?)?.toInt(),
  telephone: json['telephone'] as String?,
  updateTime: json['updateTime'] as String?,
  updateUserId: (json['updateUserId'] as num?)?.toInt(),
);

Map<String, dynamic> _$EnterpriseToJson(Enterprise instance) =>
    <String, dynamic>{
      'address': instance.address,
      'businessLicense': instance.businessLicense,
      'businessScope': instance.businessScope,
      'capital': instance.capital,
      'company': instance.company,
      'createDate': instance.createDate,
      'deleteFlag': instance.deleteFlag,
      'enterpriseCode': instance.enterpriseCode,
      'enterpriseId': instance.enterpriseId,
      'idcardFront': instance.idcardFront,
      'idcardReverse': instance.idcardReverse,
      'legal': instance.legal,
      'length': instance.length,
      'modId': instance.modId,
      'module': instance.module,
      'start': instance.start,
      'telephone': instance.telephone,
      'updateTime': instance.updateTime,
      'updateUserId': instance.updateUserId,
    };

Logistics _$LogisticsFromJson(Map<String, dynamic> json) => Logistics(
  createTime: json['createTime'] as String?,
  deleteFlag: (json['deleteFlag'] as num?)?.toInt(),
  enterpriseId: (json['enterpriseId'] as num?)?.toInt(),
  length: (json['length'] as num?)?.toInt(),
  logisticsAlias: json['logisticsAlias'] as String?,
  logisticsBankAccount: json['logisticsBankAccount'] as String?,
  logisticsBankId: (json['logisticsBankId'] as num?)?.toInt(),
  logisticsConnector: json['logisticsConnector'] as String?,
  logisticsConnectorTel: json['logisticsConnectorTel'] as String?,
  logisticsId: (json['logisticsId'] as num?)?.toInt(),
  logisticsName: json['logisticsName'] as String?,
  logisticsStatus: (json['logisticsStatus'] as num?)?.toInt(),
  modId: (json['modId'] as num?)?.toInt(),
  module: json['module'] as String?,
  start: (json['start'] as num?)?.toInt(),
  updateId: (json['updateId'] as num?)?.toInt(),
  updateTime: json['updateTime'] as String?,
  updateUser: json['updateUser'] as String?,
);

Map<String, dynamic> _$LogisticsToJson(Logistics instance) => <String, dynamic>{
  'createTime': instance.createTime,
  'deleteFlag': instance.deleteFlag,
  'enterpriseId': instance.enterpriseId,
  'length': instance.length,
  'logisticsAlias': instance.logisticsAlias,
  'logisticsBankAccount': instance.logisticsBankAccount,
  'logisticsBankId': instance.logisticsBankId,
  'logisticsConnector': instance.logisticsConnector,
  'logisticsConnectorTel': instance.logisticsConnectorTel,
  'logisticsId': instance.logisticsId,
  'logisticsName': instance.logisticsName,
  'logisticsStatus': instance.logisticsStatus,
  'modId': instance.modId,
  'module': instance.module,
  'start': instance.start,
  'updateId': instance.updateId,
  'updateTime': instance.updateTime,
  'updateUser': instance.updateUser,
};

LogisticsRole _$LogisticsRoleFromJson(Map<String, dynamic> json) =>
    LogisticsRole(
      length: (json['length'] as num?)?.toInt(),
      logisticsId: (json['logisticsId'] as num?)?.toInt(),
      modId: (json['modId'] as num?)?.toInt(),
      module: json['module'] as String?,
      roleDesc: json['roleDesc'] as String?,
      roleId: (json['roleId'] as num?)?.toInt(),
      roleName: json['roleName'] as String?,
      start: (json['start'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LogisticsRoleToJson(LogisticsRole instance) =>
    <String, dynamic>{
      'length': instance.length,
      'logisticsId': instance.logisticsId,
      'modId': instance.modId,
      'module': instance.module,
      'roleDesc': instance.roleDesc,
      'roleId': instance.roleId,
      'roleName': instance.roleName,
      'start': instance.start,
    };

LogisticsUser _$LogisticsUserFromJson(Map<String, dynamic> json) =>
    LogisticsUser(
      createId: (json['createId'] as num?)?.toInt(),
      createName: json['createName'] as String?,
      createTime: json['createTime'] as String?,
      deleteFlag: (json['deleteFlag'] as num?)?.toInt(),
      firstLogin: (json['firstLogin'] as num?)?.toInt(),
      length: (json['length'] as num?)?.toInt(),
      logisticsId: (json['logisticsId'] as num?)?.toInt(),
      logisticsRoleId: (json['logisticsRoleId'] as num?)?.toInt(),
      logisticsUserId: (json['logisticsUserId'] as num?)?.toInt(),
      modId: (json['modId'] as num?)?.toInt(),
      module: json['module'] as String?,
      start: (json['start'] as num?)?.toInt(),
      updateTime: json['updateTime'] as String?,
      updateUserId: (json['updateUserId'] as num?)?.toInt(),
      updateUserName: json['updateUserName'] as String?,
      userFlag: (json['userFlag'] as num?)?.toInt(),
      userIdentityId: (json['userIdentityId'] as num?)?.toInt(),
      userImage: json['userImage'] as String?,
      userLoginName: json['userLoginName'] as String?,
      userMobile: json['userMobile'] as String?,
      userName: json['userName'] as String?,
      userPwd: json['userPwd'] as String?,
      userTime: json['userTime'] as String?,
    );

Map<String, dynamic> _$LogisticsUserToJson(LogisticsUser instance) =>
    <String, dynamic>{
      'createId': instance.createId,
      'createName': instance.createName,
      'createTime': instance.createTime,
      'deleteFlag': instance.deleteFlag,
      'firstLogin': instance.firstLogin,
      'length': instance.length,
      'logisticsId': instance.logisticsId,
      'logisticsRoleId': instance.logisticsRoleId,
      'logisticsUserId': instance.logisticsUserId,
      'modId': instance.modId,
      'module': instance.module,
      'start': instance.start,
      'updateTime': instance.updateTime,
      'updateUserId': instance.updateUserId,
      'updateUserName': instance.updateUserName,
      'userFlag': instance.userFlag,
      'userIdentityId': instance.userIdentityId,
      'userImage': instance.userImage,
      'userLoginName': instance.userLoginName,
      'userMobile': instance.userMobile,
      'userName': instance.userName,
      'userPwd': instance.userPwd,
      'userTime': instance.userTime,
    };
