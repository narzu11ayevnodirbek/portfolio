import 'package:portfolio/core/utils/app_colors.dart';
import 'package:portfolio/core/utils/app_textstyles.dart';
import 'package:portfolio/core/widgets/press_effect.dart';
import 'package:portfolio/imports.dart';
import 'package:portfolio/presentation/components/no_scrollbar_scroll_behavior.dart';

class PortfolioScreenTablet extends StatefulWidget {
  const PortfolioScreenTablet({super.key});

  @override
  State<PortfolioScreenTablet> createState() => _PortfolioScreenTabletState();
}

class _PortfolioScreenTabletState extends State<PortfolioScreenTablet> {
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
              Text("My projects", style: AppTextStyles.fw600s16),
              SizedBox(height: 10.h),
              GridView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    // margin: EdgeInsets.only(bottom: 20.h),
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
                  crossAxisCount: 2,
                  // childAspectRatio: 1,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
