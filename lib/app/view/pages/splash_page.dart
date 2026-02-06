import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_ce/hive.dart';
import 'package:tms_flutter/app/constants/route_constants.dart';
import 'package:tms_flutter/utils/assets_gen.dart';
import 'package:tms_flutter/utils/hive_utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkTokenAndJump();
  }

  Future<void> _checkTokenAndJump() async {
    final String? token = await HiveUtils.getUserToken();

    await Future.delayed(const Duration(seconds: 2));
    // 3. 根据token是否为空判断跳转目标
    if (token != null && token.isNotEmpty) {
      // 有token：跳转到首页（offNamed关闭当前页，避免返回闪屏页）
      Get.offNamed(RouteConstants.home);
    } else {
      // 无token：跳转到登录页
      Get.offNamed(RouteConstants.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 180),
            Image.asset(
              Assets.images.icSplashLogo.path,
              width: 150,
              height: 50,
            ),
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(Assets.images.icSplashLogoBg.path),
            ),
            const Expanded(flex: 1, child: SizedBox()),
            Image.asset(Assets.images.icNameLogo.path, width: 67, height: 24),
            const SizedBox(height: 35),
            const Text('www.guangxingyun.com'),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
