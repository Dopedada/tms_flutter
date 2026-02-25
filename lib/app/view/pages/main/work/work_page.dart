import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tms_flutter/app/view/pages/main/work/work_controller.dart';

class WorkPage extends GetView<WorkController> {
  const WorkPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _WorkPage();
  }
}

class _WorkPage extends StatefulWidget {
  const _WorkPage();

  @override
  State<StatefulWidget> createState() {
    return _WorkPageState();
  }
}

class _WorkPageState extends State<_WorkPage>
    with SingleTickerProviderStateMixin {
  late WorkController _workController;
  late TabController _tabController;

  final List<String> _tabs = [
    '首页',
    '分类',
    '我的',
    '首页',
    '分类',
    '我的',
    '首页',
    '分类',
    '我的',
    '首页',
    '分类',
    '我的',
  ];

  final List<Widget> _pages = [
    const _PageItem(color: Colors.red, text: '首页内容'),
    const _PageItem(color: Colors.green, text: '分类内容'),
    const _PageItem(color: Colors.blue, text: '我的内容'),
  ];

  @override
  void initState() {
    super.initState();
    _workController = Get.find<WorkController>();
    _tabController = TabController(
      length: _tabs.length, // 标签数量
      vsync: this, // 动画同步（必须混入SingleTickerProviderStateMixin）
      initialIndex: 0, // 默认选中第0个标签
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: _tabs.map((tab) => Tab(text: tab)).toList(),
              isScrollable: true,
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

// 复用之前的_PageItem组件
class _PageItem extends StatelessWidget {
  final Color color;
  final String text;

  const _PageItem({required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 24),
      ),
    );
  }
}
