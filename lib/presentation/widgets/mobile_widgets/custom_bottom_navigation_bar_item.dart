import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/widgets/press_effect.dart';

class CustomBottomNavigationBarItem extends StatelessWidget {
  final String icon;
  final String label;
  final int index;
  final int currentIndex;
  final Function(int) onTap;
  const CustomBottomNavigationBarItem({
    super.key,
    required this.icon,
    required this.label,
    required this.index,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final isSelected = currentIndex == index;
    return PressEffect(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/icons/$icon.svg",
            width: 20,
            height: 20,
            color: isSelected ? AppColors.vegasGold : Colors.grey,
            fit: BoxFit.scaleDown,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? AppColors.vegasGold : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
