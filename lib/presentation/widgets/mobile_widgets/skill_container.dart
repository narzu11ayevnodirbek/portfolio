import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';

class SkillContainer extends StatelessWidget {
  final String title;
  final String info;
  final String icon;
  final double? size;
  const SkillContainer({
    super.key,
    required this.title,
    required this.info,
    required this.icon,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
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
      child: Column(
        children: [
          SvgPicture.asset(
            "assets/icons/$icon.svg",
            width: size ?? 50,
            height: size ?? 50,
            fit: BoxFit.cover,
            color: AppColors.vegasGold,
          ),
          SizedBox(height: 12.h),
          Text(title, style: AppTextStyles.fw500s16),
          SizedBox(height: 8.h),
          Text(
            info,
            textAlign: TextAlign.center,
            style: AppTextStyles.fw400s14Info,
          ),
        ],
      ),
    );
  }
}
