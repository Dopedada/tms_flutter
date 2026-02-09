import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:tms_flutter/app/constants/route_constants.dart';
import 'package:tms_flutter/app/constants/storage_constants.dart';
import 'package:tms_flutter/app/view/bindings/main_binding.dart';
import 'package:tms_flutter/app/view/pages/main/main_page.dart';
import 'package:tms_flutter/app/view/pages/splash_page.dart';
import 'package:tms_flutter/app/view/pages/login/login_page.dart';
import 'package:tms_flutter/app/view/bindings/login_binding.dart';
import 'package:tms_flutter/utils/app_colors.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(StorageConstants.userBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: AppColors.Color1873D4),
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.initial,
      getPages: [
        GetPage(name: RouteConstants.initial, page: () => const SplashPage()),
        GetPage(
          name: RouteConstants.login,
          page: () => const LoginPage(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: RouteConstants.main,
          page: () => const MainPage(),
          binding: MainBinding(),
        ),
      ],
    );
  }
}
