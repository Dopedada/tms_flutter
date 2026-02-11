import 'package:get/get.dart';
import 'package:tms_flutter/app/model/home_list_entity.dart';
import 'package:tms_flutter/app/service/api_service.dart';

import 'package:tms_flutter/core/base/base_controller.dart';
import 'package:tms_flutter/utils/hive_utils.dart';

class HomeController extends BaseController {
  final Rx<String> _logisticsName = Rx<String>("");
  String get logisticsName => _logisticsName.value;

  final Rx<List<HomeListEntity>> _homeList = Rx<List<HomeListEntity>>([]);
  List<HomeListEntity> get homeList => _homeList.value;

  final _apiService = ApiService();
  @override
  void onInit() {
    super.onInit();
    _getUserInfo();
    _getHomeData();
  }

  Future<void> _getUserInfo() async {
    final loginData = await HiveUtils.getUserInfos();
    _logisticsName.value =
        loginData?.logisticsLoginDto?.logistics?.logisticsName ?? "";
  }

  Future<void> _getHomeData() async {
    try {
      final data = await _apiService.getHomeData();
      print('-------------------${data.data?.length.toString()}');
      _homeList.value = data.data ?? [];
    } catch (e) {
      showToast('获取首页数据失败: $e');
    } finally {}
  }
}
