import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tms_flutter/app/view/pages/main/home/home_controller.dart';
import 'package:tms_flutter/utils/assets_gen.dart';

class HomePage extends GetView<HomeController> {
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
  late HomeController _homeController;
  final RxnDouble _scrollOffset = RxnDouble(0.0); // 新增响应式变量
  @override
  void initState() {
    super.initState();
    _homeController = Get.find<HomeController>();
    _scrollController = ScrollController();
    // 新增滚动监听
    _scrollController.addListener(() {
      _scrollOffset.value = _scrollController.offset;
    });
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
              SliverAppBar(
                toolbarHeight: 75,
                backgroundColor: Colors.blue,
                elevation: 0,
                pinned: true,
                // 关键：SliverAppBar固定在顶部
                floating: false,
                expandedHeight: 250,
                // 与TopWidget高度一致ˇ
                collapsedHeight: 75,
                // 折叠/展开时的标题样式（替代原opacity逻辑）
                title: Obx(() {
                  double offset = _scrollOffset.value ?? 0.0;
                  double opacity = (offset / 200).clamp(0.0, 1.0);
                  return Text(
                    _homeController.logisticsName,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black.withOpacity(opacity),
                      fontWeight: FontWeight.w500,
                    ),
                  );
                }),
                // 核心：通过flexibleSpace实现渐变背景
                flexibleSpace: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      // 自定义渐变颜色（示例：从深蓝到浅蓝）
                      colors: [
                        Color(0xFFb8daff),
                        Colors.white,
                      ],
                      begin: Alignment.topCenter, // 渐变起始位置
                      end: Alignment.bottomCenter, // 渐变结束位置
                      // 可选：设置渐变角度/比例
                      // stops: [0.0, 0.5, 1.0],
                    ),
                  ),
                  child: FlexibleSpaceBar(
                    // 渐变背景上显示TopWidget
                    background: TopWidget(
                      onTap: (int i) {
                        _homeController.showToast(i.toString());
                      },
                    ),
                    collapseMode: CollapseMode.pin,
                  ),
                ),
              ),

              SliverPersistentHeader(
                pinned: true,
                delegate: _StickyHeaderDelegate(title: "自营计划"),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate((context, index) {
                  List<String> items = [
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                    "个人资料",
                    "修改密码",
                    "账号安全",
                  ];
                  return _buildListItem(items[index]);
                }, childCount: 30),
              ),
            ],
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
      height: 52,
      color: Colors.white,
      padding: const EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
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

class TopWidget extends StatelessWidget {
  final Function(int) onTap;

  const TopWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(width: double.infinity, height: 250),

        Positioned(
          child: Image.asset(
            Assets.images.icHomeBg.path,
            height: 185,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        Positioned(
          top: 165,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            height: 85,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => onTap(0),
                    child: Image.asset(Assets.images.icHomeContract.path),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => onTap(1),
                    child: Image.asset(Assets.images.icHomePlan.path),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => onTap(2),
                    child: Image.asset(Assets.images.icHomeCar.path),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: GestureDetector(
                    onTap: () => onTap(3),
                    child: Image.asset(Assets.images.icHomeBill.path),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
