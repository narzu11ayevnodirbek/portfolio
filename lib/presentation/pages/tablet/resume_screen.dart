import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/imports.dart';
import 'package:portfolio/presentation/components/no_scrollbar_scroll_behavior.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/custom_button.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/skill_indicator.dart';

class ResumeScreenTablet extends StatefulWidget {
  const ResumeScreenTablet({super.key});

  @override
  State<ResumeScreenTablet> createState() => _ResumeScreenTabletState();
}

class _ResumeScreenTabletState extends State<ResumeScreenTablet> {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollbarScrollBehavior(),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).colorScheme.surfaceContainer,
            ),
            borderRadius: BorderRadius.circular(30.r),
            color: Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Resume", style: AppTextStyles.fw600s16),
              SizedBox(height: 10.h),
              Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 10.w,
                children: [
                  Flexible(
                    child: CustomButton(title: "Resume", onTap: () {}),
                  ),
                  Flexible(
                    child: CustomButton(title: "CV", onTap: () {}),
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text("My skills", style: AppTextStyles.fw600s16),
              SizedBox(height: 10.h),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkillIndicator(title: "Flutter", value: 0.9),
                    SkillIndicator(title: "Dart", value: 0.9),
                    SkillIndicator(title: "State Management", value: 0.8),
                    SkillIndicator(title: "REST API", value: 0.9),
                    SkillIndicator(title: "Firebase", value: 0.9),
                    SkillIndicator(
                      title: "Architecture & Clean Code",
                      value: 0.75,
                    ),
                    SkillIndicator(title: "Figma", value: 0.95),
                    SkillIndicator(
                      title: "DevTools(Git & GitHub)",
                      value: 0.95,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
