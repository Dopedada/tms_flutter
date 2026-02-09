import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:get/state_manager.dart';
import 'package:tms_flutter/app/view/pages/main/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  @Preview()
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _HomePageContent();
  }
}

class _HomePageContent extends StatefulWidget {
  const _HomePageContent();

  @override
  State<_HomePageContent> createState() => _HomePageContentState();
}

class _HomePageContentState extends State<_HomePageContent> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            controller: _scrollController,
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate([
                  SizedBox(
                    height: 200,
                    child: Container(
                      color: Colors.grey.shade100,
                      alignment: Alignment.center,
                      child: const Text("SliverList（高度限制为200）"),
                    ),
                  ),
                ]),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyHeaderDelegate(title: "账户设置"),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  List<String> items = ["个人资料", "修改密码", "账号安全"];
                  return _buildListItem(items[index]);
                }, childCount: 3),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyHeaderDelegate(title: "系统设置"),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  List<String> items = ["关于我们", "帮助与反馈", "隐私设置"];
                  return _buildListItem(items[index]);
                }, childCount: 3),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyHeaderDelegate(title: "系统设置2"),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  List<String> items = ["关于我们", "帮助与反馈", "隐私设置"];
                  return _buildListItem(items[index]);
                }, childCount: 3),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyHeaderDelegate(title: "系统设置3"),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  List<String> items = ["关于我们", "帮助与反馈", "隐私设置"];
                  return _buildListItem(items[index]);
                }, childCount: 3),
              ),
              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyHeaderDelegate(title: "系统设置4"),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  List<String> items = ["关于我们", "帮助与反馈", "隐私设置"];
                  return _buildListItem(items[index]);
                }, childCount: 3),
              ),
            ],
          ),
          AnimatedBuilder(
            animation: _scrollController,
            builder: (context, _) {
              double opacity = (_scrollController.hasClients
                  ? (_scrollController.offset / 200).clamp(0.0, 1.0)
                  : 0.0);

              return Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: AppBar(
                  toolbarHeight: 75,
                  title: Text(
                    "限制SliverFillRemaining高度",
                    style: TextStyle(
                      color: Colors.white.withValues(alpha: opacity),
                    ),
                  ),
                  backgroundColor: Colors.blue.withValues(alpha: opacity),
                  elevation: opacity > 0 ? 4 : 0,
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  // 通用列表项构建方法
  Widget _buildListItem(String title) {
    return Container(
      height: 56,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(title),
    );
  }
}

// 吸顶标题代理类
class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final String title;

  _StickyHeaderDelegate({required this.title});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      height: 48,
      color: Colors.grey.shade100,
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant _StickyHeaderDelegate oldDelegate) {
    return oldDelegate.title != title;
  }
}
