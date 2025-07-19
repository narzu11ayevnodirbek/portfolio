import 'dart:ui';

import 'package:portfolio/imports.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/custom_bottom_navigation_bar_item.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: IntrinsicHeight(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 20.w, sigmaY: 20.h),
          child: Container(
            padding:   EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.1),
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)],
              borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomBottomNavigationBarItem(
                  icon: "about",
                  label: "About",
                  index: 0,
                  currentIndex: currentIndex,
                  onTap: onTap,
                ),
          
                CustomBottomNavigationBarItem(
                  icon: "resume",
                  label: "Resume",
                  index: 1,
                  currentIndex: currentIndex,
                  onTap: onTap,
                ),
                CustomBottomNavigationBarItem(
                  icon: "portfolio",
                  label: "Projects",
                  index: 2,
                  currentIndex: currentIndex,
                  onTap: onTap,
                ),
                CustomBottomNavigationBarItem(
                  icon: "contact",
                  label: "Contact",
                  index: 3,
                  currentIndex: currentIndex,
                  onTap: onTap,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
