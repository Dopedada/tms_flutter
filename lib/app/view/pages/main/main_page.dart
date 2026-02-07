import 'package:flutter/material.dart';
import 'package:tms_flutter/app/view/pages/main/home/home_page.dart';
import 'package:tms_flutter/app/view/pages/main/mine/mine_page.dart';
import 'package:tms_flutter/app/view/pages/main/work/work_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 当前选中的导航栏索引
  int _currentIndex = 0;

  // 定义导航栏对应的页面（使用PageView+IndexedStack保持页面状态）
  final List<Widget> _pages = [HomePage(), WorkPage(), MinePage()];

  // 切换导航栏选中项
  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        // 当前选中的索引
        currentIndex: _currentIndex,
        // 选中项的颜色
        selectedItemColor: Colors.blue,
        // 未选中项的颜色
        unselectedItemColor: Colors.grey,
        // 点击事件
        onTap: _onTabTapped,
        // 导航栏类型（fixed：固定宽度，shifting：有动画效果）
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home), // 图标
            label: '首页', // 文字
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: '消息'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
      ),
    );
  }
}
