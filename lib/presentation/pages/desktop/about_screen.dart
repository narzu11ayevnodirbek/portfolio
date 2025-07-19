import 'package:flutter/material.dart';
import 'package:portfolio/presentation/components/no_scrollbar_scroll_behavior.dart';
import 'package:portfolio/presentation/widgets/desktop_widgets.dart/about_me_container_desktop.dart';

class AboutScreenDesktop extends StatelessWidget {
  const AboutScreenDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: NoScrollbarScrollBehavior(),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: AboutMeContainerDesktop(),
      ),
    );
  }
}
