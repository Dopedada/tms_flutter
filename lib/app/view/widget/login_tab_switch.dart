import 'package:flutter/material.dart';

class LoginTabSwitch extends StatefulWidget {
  final Function(int) onTabChanged;

  const LoginTabSwitch({super.key, required this.onTabChanged});

  @override
  State<LoginTabSwitch> createState() => _LoginTabSwitchState();
}

class _LoginTabSwitchState extends State<LoginTabSwitch> {
  int _currentIndex = 0; // 0: 验证码登录, 1: 密码登录

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200, // 根据需要调整宽度
      height: 40,
      decoration: BoxDecoration(
        color: Colors.grey[200], // 未选中部分的背景色
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: [
          // 滑块动画背景
          AnimatedAlign(
            duration: const Duration(milliseconds: 220),
            curve: Curves.easeInOut,
            alignment: _currentIndex == 0
                ? Alignment.centerLeft
                : Alignment.centerRight,
            child: Container(
              width: 100, // 宽度通常是总宽的一半
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: const LinearGradient(
                  colors: [Color(0xFF00CCFF), Color(0xFF0077FF)], // 渐变蓝色
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.blue.withOpacity(0.3),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
            ),
          ),
          // 文字按钮层
          Row(children: [_buildTabItem("验证码登录", 0), _buildTabItem("密码登录", 1)]),
        ],
      ),
    );
  }

  Widget _buildTabItem(String title, int index) {
    bool isSelected = _currentIndex == index;
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            _currentIndex = index;
          });
          widget.onTabChanged(index); // 通知父组件
        },
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey[600],
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 14,
            ),
          ),
        ),
      ),
    );
  }
}
