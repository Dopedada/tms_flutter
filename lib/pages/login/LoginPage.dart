import 'package:flutter/material.dart';
import 'package:tms_flutter/pages/login/LoginTabSwitch.dart';
import 'package:tms_flutter/pages/login/PhoneLoginWidget.dart';

import '../../gen/assets.gen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<StatefulWidget> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  int _currentIndex = 0;

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
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: PhoneLoginWidget(),
              // child: _currentIndex == 0
              //     ? PhoneLoginWidget()
              //     : PhoneLoginWidget(isShowCaptcha: true),
            ),
          ],
        ),
      ),
    );
  }
}
