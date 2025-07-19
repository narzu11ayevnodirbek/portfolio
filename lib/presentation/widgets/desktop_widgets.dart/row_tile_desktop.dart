import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';

class RowTileDesktop extends StatelessWidget {
  final String leading;
  final String title;
  final String info;
  const RowTileDesktop({
    super.key,
    required this.leading,
    required this.title,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 20.w,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
            color: Theme.of(context).colorScheme.secondaryContainer,
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 5),
            ],
          ),
          child: Center(
            child: SvgPicture.asset(
              "assets/icons/$leading.svg",
              width: 30,
              height: 30,
              fit: BoxFit.scaleDown,
              color: AppColors.vegasGold,
            ),
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: AppTextStyles.fw500s18),
              Text(
                info,
                style: AppTextStyles.fw400s16Info,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
