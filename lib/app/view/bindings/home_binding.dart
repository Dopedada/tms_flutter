import 'package:get/get.dart';
import 'package:tms_flutter/app/view/pages/main/home/home_controller.dart';

class HomeBinding extends Bindings{

 @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }

}