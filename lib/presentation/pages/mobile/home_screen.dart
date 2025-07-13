import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/presentation/widgets/skill_container.dart';

class HomeScreenMobile extends StatelessWidget {
  const HomeScreenMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(60.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About Me"),
          Row(
            children: [
              Expanded(
                child: Text(
                  "I'm a Flutter Developer focused on building mobile applications that are fast, modern, and user-centric. I enjoy turning complex ideas into simple, elegant, and fully functional apps. My job is to craft applications that are not only technically robust but also visually engaging and intuitive to use. I believe a great app is where design meets performance, and that's where I bring value — through custom-coded solutions that look and feel amazing.",
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h),
          Text("What I'm doing"),
          SizedBox(height: 16.h),
          SkillContainer(
            title: "Mobile Apps",
            info:
                "Professional development of applications for both iOS and Android",
          ),
          SizedBox(height: 16.h),
          SkillContainer(
            title: "Mobile Design",
            info:
                "Basic Figma experience - capable of designing clean mobile UI screens",
          ),
          SizedBox(height: 16),
          SkillContainer(
            title: "Web Development",
            info: "High-quality development of sites at the professional level",
          ),
          SizedBox(height: 20.h),
        ],
      ),
    );
  }
}
