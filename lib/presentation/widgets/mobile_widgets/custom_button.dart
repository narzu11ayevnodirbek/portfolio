import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/core/widgets/press_effect.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return PressEffect(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(vertical: 5.h),
        decoration: BoxDecoration(
          color: AppColors.vegasGold,
          borderRadius: BorderRadius.circular(100.r),
        ),
        child: Center(
          child: Row(
            spacing: 10.w,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.download),
              Text(title, style: AppTextStyles.fw500s14),
            ],
          ),
        ),
      ),
    );
  }
}
