import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tms_flutter/app/view/pages/main/mine/mine_controller.dart';
import 'package:tms_flutter/app/view/widget/mine_item_widget.dart';
import 'package:tms_flutter/utils/assets_gen.dart';

class MinePage extends GetView<MineController> {
  const MinePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.icMineHeader.path),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 80),
              Row(
                children: [
                  const SizedBox(width: 14),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9),
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 2),
                    ),
                    child: const Icon(
                      Icons.person,
                      color: Color(0xFF64B5F6),
                      size: 38,
                    ),
                  ),
                  const SizedBox(width: 14),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // 公司名称白色文字
                      const Text(
                        '乌海市荣晨物流有限公司AAAG',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 6),
                      // A | B 标签行
                      Row(
                        children: const [
                          Text(
                            'A',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          SizedBox(width: 6),
                          Text(
                            '|',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'B',
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.all(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(
              children: [
                MineItemWidget(title: "个人资料", name: "张三"),
                MineItemWidget(title: "修改密码", name: "修改登录密码"),
                MineItemWidget(title: "关于我们", name: "版本V1.0.0"),
                MineItemWidget(
                  title: "帮助与反馈",
                  name: "常见问题解答",
                  isShowLine: false,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
