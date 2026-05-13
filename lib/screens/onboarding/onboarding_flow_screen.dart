import 'package:flutter/material.dart';

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

  final List<Widget> pages = const [

    WelcomeStep(),

    // NEXT STEPS
    // Add later:
    //
    // NameStep(),
    // ThemeStep(),
    // NotificationStep(),
    // etc...
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
