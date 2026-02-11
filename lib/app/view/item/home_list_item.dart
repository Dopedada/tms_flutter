import 'package:flutter/material.dart';
import 'package:tms_flutter/app/model/home_list_entity.dart';
import 'package:tms_flutter/utils/app_colors.dart';

import '../../../gen/assets.gen.dart';

class HomeListItem extends StatelessWidget {
  final HomeListEntity data;
  final VoidCallback? onTap;

  const HomeListItem({super.key, required this.data, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.only(left: 5, top: 5, right: 5),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Padding(
          padding: const EdgeInsetsGeometry.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.images.icPlanNum.path,
                    height: 12,
                    width: 12,
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      '计划号:${data.orderPlan.orderCode}',
                      style: TextStyle(fontSize: 12),
                    ),
                  ),
                  SizedBox(width: 8),
                  Text(
                    '网货/大宗',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppColors.Colorff8f1f,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Text(
                '${data.orderRoute.loadingAddress}',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                '${data.orderRoute.unloadAddress}',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: const LinearGradient(
                    colors: [Color(0x33DEEDFD), Color(0xCCECF0F4)],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsetsGeometry.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('线路'), Text('货物'), Text('货量'), Text('时间')],
                  ),
                ),
              ),
              SizedBox(height: 8),

              Row(
                children: [
                  Expanded(child: SizedBox()),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // 16px 圆角
                      ),
                      side: const BorderSide(
                        color: AppColors.Color3B82F6,
                        width: 1,
                      ),
                      backgroundColor: AppColors.Colorf1f8ff,
                    ),
                    child: const Text(
                      '二维码派车',
                      style: TextStyle(color: AppColors.Color3B82F6),
                    ),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    // 核心：设置按钮样式
                    style: ElevatedButton.styleFrom(
                      // 圆角半径（关键属性）
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // 8px 圆角
                      ),
                      // 可选：设置按钮大小、背景色等
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text(
                      '派车',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
