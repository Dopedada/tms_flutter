import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tms_flutter/core/utils/assets_gen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.offNamed('/login');
    });
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
