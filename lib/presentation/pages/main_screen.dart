import 'package:portfolio/imports.dart';
import 'package:portfolio/presentation/widgets/mobile_widgets/custom_bottom_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final ValueNotifier<int> _currentIndexNotifier = ValueNotifier(0);

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

  @override
  void dispose() {
    _currentIndexNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: _currentIndexNotifier,
      builder: (context, currentIndex, _) {
        return Scaffold(
          body: screens[currentIndex],
          bottomNavigationBar: ResponsiveLayout.isDesktop(context)
              ? null
              : CustomBottomNavigationBar(
                  currentIndex: currentIndex,
                  onTap: (index) {
                    _currentIndexNotifier.value = index;
                  },
                ),
        );
      },
    );
  }
}
