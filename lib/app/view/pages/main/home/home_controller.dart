import 'package:get/get.dart';
import 'package:hive_ce_flutter/hive_ce_flutter.dart';
import 'package:tms_flutter/app/service/api_service.dart';
import 'dart:convert';
import 'dart:typed_data';

import 'package:tms_flutter/core/base/base_controller.dart';
import 'package:tms_flutter/utils/hive_utils.dart';

import '../../../../model/logistics_login_dto.dart';

class HomeController extends BaseController {
  final Rx<String> _logisticsName = Rx<String>("");

  String get logisticsName => _logisticsName.value;

  @override
  void onInit() {
    super.onInit();
    _getUserInfo();
  }

  Future<void> _getUserInfo() async {
    final loginData = await HiveUtils.getUserInfos();
    _logisticsName.value =
        loginData?.logisticsLoginDto?.logistics?.logisticsName ?? "";
  }
}
