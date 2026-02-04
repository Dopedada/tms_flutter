import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tms_flutter/gen/assets.gen.dart';
import 'package:tms_flutter/pages/login/LoginPage.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // 设置 2 秒后的跳转逻辑
    Timer(const Duration(seconds: 2), () {
      if (mounted) {
        // 使用 pushReplacement 确保用户点击返回键时不会回到闪屏页
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
      }
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
            Expanded(flex: 1, child: const SizedBox()),
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
