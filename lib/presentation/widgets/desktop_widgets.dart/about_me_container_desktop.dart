import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/core/widgets/press_effect.dart';
import 'package:portfolio/presentation/widgets/desktop_widgets.dart/skill_container_desktop.dart';

class AboutMeContainerDesktop extends StatelessWidget {
  const AboutMeContainerDesktop({super.key});

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
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Me", style: AppTextStyles.fw600s18),
          SizedBox(height: 10.h),
          Row(
            children: [
              Expanded(
                child: Text(
                  "I'm a Flutter Developer focused on building mobile applications that are fast, modern, and user-centric. I enjoy turning complex ideas into simple, elegant, and fully functional apps.\n\nMy job is to craft applications that are not only technically robust but also visually engaging and intuitive to use. \n\nI believe a great app is where design meets performance, and that's where I bring value — through custom-coded solutions that look and feel amazing.",
                  style: AppTextStyles.fw400s16Info,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text("My Skillset", style: AppTextStyles.fw600s18),
          SizedBox(height: 16.h),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            direction: Axis.horizontal,
            children: [
              SizedBox(
                width: 0.25.sw,
                child: PressEffect(
                  onTap: () {},
                  child: SkillContainerDesktop(
                    title: "Mobile Apps",
                    info:
                        "Professional development of applications for both iOS and Android",
                    icon: "mobile",
                    size: 80,
                  ),
                ),
              ),
              SizedBox(
                width: 0.25.sw,
                child: PressEffect(
                  onTap: () {},
                  child: SkillContainerDesktop(
                    title: "Mobile Design",
                    info:
                        "Basic Figma experience - capable of designing clean mobile UI screens",
                    icon: "design",
                    size: 60,
                  ),
                ),
              ),
              SizedBox(
                width: 0.25.sw,
                child: PressEffect(
                  onTap: () {},
                  child: SkillContainerDesktop(
                    title: "Web Development",
                    info:
                        "High-quality development of sites at the professional level",
                    icon: "web",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
