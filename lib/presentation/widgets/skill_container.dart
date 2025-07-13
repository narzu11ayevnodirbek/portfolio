import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SkillContainer extends StatelessWidget {
  final String title;
  final String info;
  const SkillContainer({super.key, required this.title, required this.info});

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
        children: [
          Icon(Icons.phone, size: 80),
          Text(title),
          Text(info, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
