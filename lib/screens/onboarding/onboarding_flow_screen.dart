import 'package:flutter/material.dart';

import 'name_step.dart';
import 'theme_step.dart';
import 'welcome_step.dart';

class OnboardingFlowScreen
    extends StatefulWidget {
  const OnboardingFlowScreen({
    super.key,
  });

  @override
  State<OnboardingFlowScreen>
      createState() =>
          _OnboardingFlowScreenState();
}

class _OnboardingFlowScreenState
    extends State<
        OnboardingFlowScreen> {

  final PageController
      pageController =
      PageController();

  int currentPage = 0;

  late final List<Widget> pages = [

    WelcomeStep(
      onNext: nextPage,
    ),

    NameStep(
      onNext: nextPage,
    ),

    ThemeStep(
      onNext: nextPage,
    ),
  ];

  void nextPage() {

    if (currentPage <
        pages.length - 1) {

      pageController.nextPage(
        duration: const Duration(
          milliseconds: 400,
        ),

        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,

        physics:
            const NeverScrollableScrollPhysics(),

        onPageChanged: (index) {
          setState(() {
            currentPage = index;
          });
        },

        children: pages,
      ),
    );
  }
}
