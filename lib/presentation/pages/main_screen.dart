import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:portfolio/presentation/components/responsive_layout.dart';
import 'package:portfolio/presentation/pages/desktop/contact_screen.dart';
import 'package:portfolio/presentation/pages/desktop/home_screen.dart';
import 'package:portfolio/presentation/pages/desktop/portfolio_screen.dart';
import 'package:portfolio/presentation/pages/desktop/resume_screen.dart';
import 'package:portfolio/presentation/pages/mobile/contact_screen.dart';
import 'package:portfolio/presentation/pages/mobile/home_screen.dart';
import 'package:portfolio/presentation/pages/mobile/portfolio_screen.dart';
import 'package:portfolio/presentation/pages/mobile/resume_screen.dart';
import 'package:portfolio/presentation/pages/tablet/contact_screen.dart';
import 'package:portfolio/presentation/pages/tablet/home_screen.dart';
import 'package:portfolio/presentation/pages/tablet/portfolio_screen.dart';
import 'package:portfolio/presentation/pages/tablet/resume_screen.dart';
import 'package:portfolio/presentation/widgets/row_tile.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final screens = [
    ResponsiveLayout(
      mobile: HomeScreenMobile(),
      tablet: HomeScreenTablet(),
      desktop: HomeScreenDesktop(),
    ),
    ResponsiveLayout(
      mobile: ResumeScreenMobile(),
      tablet: ResumeScreenTablet(),
      desktop: ResumeScreenDesktop(),
    ),
    ResponsiveLayout(
      mobile: PortfolioScreenMobile(),
      tablet: PortfolioScreenTablet(),
      desktop: PortfolioScreenDesktop(),
    ),
    ResponsiveLayout(
      mobile: ContactScreenMobile(),
      tablet: ContactScreenTablet(),
      desktop: ContactScreenDesktop(),
    ),
  ];
  final ValueNotifier<bool> _isExpanded = ValueNotifier(false);

  @override
  void dispose() {
    _isExpanded.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(60.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          spacing: 60.w,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadiusGeometry.circular(16.r),
                              child: Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(color: Colors.teal),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Narzullayev Nodirbek"),
                                Chip(
                                  label: Text("Mobile developer"),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusGeometry.circular(
                                      35.r,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(height: 20.h),
                                          Divider(color: Colors.grey),
                                          SizedBox(height: 20.h),
                                          RowTile(
                                            leading: Icon(Icons.email),
                                            title: "EMAIL",
                                            info:
                                                "nodirbeknarzullayev2004@gmail.com",
                                          ),
                                          SizedBox(height: 16.h),
                                          RowTile(
                                            leading: Icon(Icons.phone),
                                            title: "PHONE",
                                            info: "+998 (94) 411 90 70",
                                          ),
                                          SizedBox(height: 16.h),
                                          RowTile(
                                            leading: Icon(Icons.calendar_month),
                                            title: "AGE",
                                            info: "21 y.o.",
                                          ),
                                          SizedBox(height: 16.h),
                                          RowTile(
                                            leading: Icon(Icons.location_on),
                                            title: "LOCATION",
                                            info: "Tashkent, Uzbekistan",
                                          ),
                                          SizedBox(height: 20.h),
                                          Divider(color: Colors.grey),
                                          SizedBox(height: 16.h),
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Icon(Icons.facebook),
                                              SizedBox(width: 20.w),
                                              Icon(Icons.facebook),
                                              SizedBox(width: 20.w),
                                              Icon(Icons.facebook),
                                            ],
                                          ),
                                          SizedBox(height: 16.h),
                                        ],
                                      )
                                    : const SizedBox.shrink(), // animatedOpacity uchun bo‘sh joy
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: ValueListenableBuilder(
                      valueListenable: _isExpanded,
                      builder: (context, value, _) {
                        return GestureDetector(
                          onTap: () {
                            _isExpanded.value = !value;
                          },
                          child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(60.r),
                                bottomLeft: Radius.circular(60.r),
                              ),
                              border: Border.all(color: Colors.grey),
                            ),
                            child: AnimatedRotation(
                              turns: value ? 0.5 : 0.0,
                              duration: const Duration(milliseconds: 300),
                              child: const Icon(Icons.keyboard_arrow_down),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              screens[_currentIndex],
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10)],
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildNavItem(icon: Icons.home, label: 'Home', index: 0),
            _buildNavItem(icon: Icons.article, label: 'Resume', index: 1),
            _buildNavItem(icon: Icons.portable_wifi_off, label: "Portfolio", index: 2),
            _buildNavItem(icon: Icons.contact_mail, label: 'Contact', index: 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required IconData icon,
    required String label,
    required int index,
  }) {
    final isSelected = currentIndex == index;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isSelected ? Colors.blue : Colors.grey,
            size: isSelected ? 28 : 24,
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.blue : Colors.grey,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
