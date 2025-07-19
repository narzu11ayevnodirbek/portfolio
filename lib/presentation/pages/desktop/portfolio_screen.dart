import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/core/widgets/press_effect.dart';
import 'package:portfolio/imports.dart';
import 'package:portfolio/presentation/components/no_scrollbar_scroll_behavior.dart';

class PortfolioScreenDesktop extends StatefulWidget {
  const PortfolioScreenDesktop({super.key});

  @override
  State<PortfolioScreenDesktop> createState() => _PortfolioScreenDesktopState();
}

class _PortfolioScreenDesktopState extends State<PortfolioScreenDesktop> {
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
              Text("My projects", style: AppTextStyles.fw600s18),
              SizedBox(height: 10.h),
              GridView.builder(
                itemCount: 7,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    height: 400,
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
                        PressEffect(
                          onTap: () {},
                          child: Container(
                            width: double.infinity,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: Colors.blueAccent,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.h),
                        Text("${index + 1}. Project name"),
                        SizedBox(height: 5.h),
                        Icon(
                          Icons.language,
                          size: 20,
                          color: AppColors.vegasGold,
                        ),
                      ],
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 0.85,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
