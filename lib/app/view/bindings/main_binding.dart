import 'package:get/get.dart';
import 'package:tms_flutter/app/view/pages/main/home/home_controller.dart';
import 'package:tms_flutter/app/view/pages/main/mine/mine_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MineController>(() => MineController());
  }
}
