import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';

class SkillContainerDesktop extends StatelessWidget {
  final String title;
  final String info;
  final String icon;
  final double? size;
  const SkillContainerDesktop({
    super.key,
    required this.title,
    required this.info,
    required this.icon,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).colorScheme.surfaceContainer,
        ),
        borderRadius: BorderRadius.circular(30.r),
        color: Theme.of(context).colorScheme.secondaryContainer,
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5),
        ],
      ),
      child: Row(
        spacing: 30,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: SvgPicture.asset(
              "assets/icons/$icon.svg",
              width: size ?? 50,
              height: size ?? 50,
              fit: BoxFit.cover,
              color: AppColors.vegasGold,
            ),
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: AppTextStyles.fw500s18),
                SizedBox(height: 8.h),
                Text(
                  info,
                  style: AppTextStyles.fw400s16Info,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
