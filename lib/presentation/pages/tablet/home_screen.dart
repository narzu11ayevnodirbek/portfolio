import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/core/widgets/press_effect.dart';
import 'package:portfolio/presentation/components/no_scrollbar_scroll_behavior.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/about_me_container.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/animated_info_widget.dart';

class HomeScreenTablet extends StatefulWidget {
  const HomeScreenTablet({super.key});

  @override
  State<HomeScreenTablet> createState() => _HomeScreenMobileState();
}

class _HomeScreenMobileState extends State<HomeScreenTablet> {
  final ValueNotifier<bool> _isExpanded = ValueNotifier(false);

  @override
  void dispose() {
    _isExpanded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollbarScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              children: [
                ValueListenableBuilder(
                  valueListenable: _isExpanded,
                  builder: (context, value, _) {
                    return PressEffect(
                      onTap: () {
                        _isExpanded.value = !value;
                      },
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Theme.of(
                              context,
                            ).colorScheme.surfaceContainer,
                          ),
                          borderRadius: BorderRadius.circular(30.r),
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              spacing: 20.w,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    16.r,
                                  ),
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                      color: Colors.teal,
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Narzullayev Nodirbek",
                                      style: AppTextStyles.fw500s16,
                                    ),
                                    SizedBox(height: 10.h),
                                    Chip(
                                      label: Text(
                                        "Flutter developer",
                                        style: AppTextStyles.fw400s14Info,
                                      ),
                                      backgroundColor: Theme.of(
                                        context,
                                      ).colorScheme.secondaryContainer,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusGeometry.circular(30.r),
                                        side: BorderSide(
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.surfaceContainer,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ValueListenableBuilder(
                              valueListenable: _isExpanded,
                              builder: (context, value, _) {
                                return AnimatedInfoWidget(value: value);
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 20.h),
            AboutMeContainer(),
          ],
        ),
      ),
    );
  }
}
