import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/imports.dart';

class SkillIndicator extends StatelessWidget {
  final String title;
  final double value;
  const SkillIndicator({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.fw500s14),
        Row(
          spacing: 10.w,
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: value,
                backgroundColor: Colors.grey,
                minHeight: 8,
                borderRadius: BorderRadius.circular(100.r),
                valueColor: AlwaysStoppedAnimation(AppColors.vegasGold),
              ),
            ),
            Text("${value * 100} %", style: AppTextStyles.fw400s14Info),
          ],
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
