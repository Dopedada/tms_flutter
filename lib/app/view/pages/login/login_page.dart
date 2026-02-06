import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tms_flutter/app/view/pages/login/login_controller.dart';
import 'package:tms_flutter/app/view/widget/account_login_widget.dart';
import 'package:tms_flutter/app/view/widget/login_tab_switch.dart';
import 'package:tms_flutter/app/view/widget/phone_login_widget.dart';
import 'package:tms_flutter/utils/assets_gen.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset(Assets.images.icLoginBg.path),
            SizedBox(height: 20),
            LoginTabSwitch(
              onTabChanged: (index) {
                controller.changeIndex(index);
              },
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Obx(
                () => Column(
                  children: [
                    if (controller.index == 0)
                      PhoneLoginWidget()
                    else
                      Accountloginwidget(),

                    SizedBox(height: 10),

                    Visibility(
                      visible: controller.index == 1,
                      maintainSize: true,
                      maintainAnimation: true,
                      maintainState: true,
                      child: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              backgroundColor: Colors.transparent,
                            ),
                            child: Text(
                              "忘记密码?",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFF40BFFF), Color(0xFF0076FF)],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(28),
                      ),
                      child: TextButton(
                        onPressed: controller.isLoggingIn
                            ? null
                            : () {
                                controller.login();
                              },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        child: controller.isLoggingIn
                            ? SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                  valueColor: AlwaysStoppedAnimation(
                                    Colors.white,
                                  ),
                                ),
                              )
                            : const Text(
                                '登录',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
