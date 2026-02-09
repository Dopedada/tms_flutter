import 'package:flutter/material.dart';
import 'package:tms_flutter/utils/app_colors.dart';
import 'package:tms_flutter/utils/assets_gen.dart';

class MineItemWidget extends StatelessWidget {
  final String title;
  final String name;
  final bool isShowLine;
  final bool isShowEnterIcon;
  final VoidCallback? onTap;

  const MineItemWidget({
    super.key,
    required this.title,
    this.name = "",
    this.isShowLine = true,
    this.isShowEnterIcon = true,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: SizedBox(
        height: 56,
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(
                      Assets.images.icMineAvatar.path,
                      width: 32,
                      height: 32,
                    ),
                    SizedBox(width: 12),
                    Text(name, style: TextStyle(fontSize: 16)),
                    Expanded(
                      child: SizedBox(
                        // 可自定义高度，宽度自动占满剩余
                        height: 1,
                      ),
                    ),

                    if (isShowEnterIcon)
                      Image.asset(
                        Assets.images.icEnter.path,
                        width: 18,
                        height: 12,
                      ),
                  ],
                ),
              ),
            ),
            if (isShowLine)
              const Divider(height: 0.5, color: AppColors.ColorLine),
          ],
        ),
      ),
    );
  }
}
