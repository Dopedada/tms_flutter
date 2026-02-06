import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:tms_flutter/utils/toast_util.dart';

class BaseController extends GetxController {
  void showToast(String message) {
    // 使用全局 Fluttertoast 封装
    ToastUtil.show(message);
  }
}
