import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/imports.dart';

class AnimatedInfoWidget extends StatelessWidget {
  final bool value;
  const AnimatedInfoWidget({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 700),
      curve: Curves.fastOutSlowIn,
      alignment: Alignment.topCenter,
      child: AnimatedOpacity(
        opacity: value ? 1.0 : 0.0,
        duration: const Duration(milliseconds: 700),
        curve: Curves.fastOutSlowIn,
        child: value
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20.h),
                  Divider(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                  SizedBox(height: 20.h),
                  RowTile(
                    leading: "mail",
                    title: "Email",
                    info: "nodirbeknarzullayev2004@gmail.com",
                  ),
                  SizedBox(height: 16.h),
                  RowTile(
                    leading: "phone",
                    title: "Phone",
                    info: "+998 (94) 411 90 70",
                  ),
                  SizedBox(height: 16.h),
                  RowTile(
                    leading: "location",
                    title: "Location",
                    info: "Tashkent, Uzbekistan",
                  ),
                  SizedBox(height: 20.h),
                  Divider(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                  SizedBox(height: 16.h),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/linkedin.svg",
                        width: 20,
                        height: 20,
                        fit: BoxFit.scaleDown,
                        color: AppColors.vegasGold,
                      ),
                      SizedBox(width: 10.w),
                      SvgPicture.asset(
                        "assets/icons/telegram.svg",
                        width: 20,
                        height: 20,
                        fit: BoxFit.scaleDown,
                        color: AppColors.vegasGold,
                      ),
                    ],
                  ),
                  SizedBox(height: 16.h),
                ],
              )
            : const SizedBox.shrink(), // animatedOpacity uchun bo‘sh joy
      ),
    );
  }
}
