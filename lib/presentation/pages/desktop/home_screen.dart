import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/core/widgets/press_effect.dart';
import 'package:portfolio/presentation/components/no_scrollbar_scroll_behavior.dart';
import 'package:portfolio/presentation/pages/desktop/about_screen.dart';
import 'package:portfolio/presentation/pages/desktop/contact_screen.dart';
import 'package:portfolio/presentation/pages/desktop/portfolio_screen.dart';
import 'package:portfolio/presentation/pages/desktop/resume_screen.dart';
import 'package:portfolio/presentation/widgets/desktop_widgets.dart/row_tile_desktop.dart';

class HomeScreenDesktop extends StatefulWidget {
  const HomeScreenDesktop({super.key});

  @override
  State<HomeScreenDesktop> createState() => _HomeScreenDesktopState();
}

class _HomeScreenDesktopState extends State<HomeScreenDesktop>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final List<Tab> myTabs = [
    Tab(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text("About"),
      ),
    ),
    Tab(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text("Resume"),
      ),
    ),
    Tab(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text("Projects"),
      ),
    ),
    Tab(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Text("Contact"),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollbarScrollBehavior(),
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 50.w, vertical: 50.h),
        physics: const BouncingScrollPhysics(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          spacing: 30.w,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(30),
                height: 0.9.sh,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 30.h),
                    ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(30.r),
                      child: Container(
                        width: 150,
                        height: 150,
                        color: AppColors.vegasGold,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text("Nodirbek Narzullayev", style: AppTextStyles.fw500s22),
                    SizedBox(height: 16.h),
                    Chip(
                      label: Text(
                        "Flutter developer",
                        style: AppTextStyles.fw400s18,
                      ),
                      backgroundColor: Theme.of(
                        context,
                      ).colorScheme.secondaryContainer,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(30.r),
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.surfaceContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 16.h),
                    Divider(
                      color: Theme.of(context).colorScheme.surfaceContainer,
                    ),

                    SizedBox(height: 20.h),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RowTileDesktop(
                          leading: "mail",
                          title: "Email",
                          info: "nodirbeknarzullayev2004@gmail.com",
                        ),
                        SizedBox(height: 16.h),
                        RowTileDesktop(
                          leading: "phone",
                          title: "Phone",
                          info: "+998 (94) 411 90 70",
                        ),
                        SizedBox(height: 16.h),
                        RowTileDesktop(
                          leading: "location",
                          title: "Location",
                          info: "Tashkent, Uzbekistan",
                        ),
                      ],
                    ),
                    SizedBox(height: 20.h),
                    Divider(
                      color: Theme.of(context).colorScheme.surfaceContainer,
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PressEffect(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/icons/linkedin.svg",
                            width: 25,
                            height: 25,
                            fit: BoxFit.scaleDown,
                            color: AppColors.vegasGold,
                          ),
                        ),
                        SizedBox(width: 10.w),
                        PressEffect(
                          onTap: () {},
                          child: SvgPicture.asset(
                            "assets/icons/telegram.svg",
                            width: 25,
                            height: 25,
                            fit: BoxFit.scaleDown,
                            color: AppColors.vegasGold,
                          ),
                        ),
                        // Spacer(),
                      ],
                    ),
                    // Spacer(),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 5,
              child: Container(
                padding: EdgeInsets.all(30),
                height: 0.9.sh,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  border: Border.all(
                    color: Theme.of(context).colorScheme.surfaceContainer,
                  ),
                  borderRadius: BorderRadius.circular(30.r),
                ),
                child: Column(
                  children: [
                    TabBar(
                      controller: _tabController,
                      tabs: myTabs,
                      indicator: BoxDecoration(
                        color: AppColors.vegasGold,
                        borderRadius: BorderRadius.circular(30.r),
                      ),
                      dividerColor: Colors.transparent,
                      indicatorColor: Colors.transparent,
                      indicatorWeight: 0,
                      labelColor: Colors.white,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        physics: NeverScrollableScrollPhysics(),
                        children: const [
                          AboutScreenDesktop(),
                          ResumeScreenDesktop(),
                          PortfolioScreenDesktop(),
                          ContactScreenDesktop(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
