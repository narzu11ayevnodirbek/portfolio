import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RowTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String info;
  const RowTile({
    super.key,
    required this.leading,
    required this.title,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 60.w,
      mainAxisSize: MainAxisSize.min,
      children: [
        leading,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text(title), Text(info)],
        ),
      ],
    );
  }
}
