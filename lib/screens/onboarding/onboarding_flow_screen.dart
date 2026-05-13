import 'package:flutter/material.dart';

import '../dashboard/dashboard_screen.dart';

import 'final_setup_step.dart';
import 'focus_areas_step.dart';
import 'menu_setup_step.dart';
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

    FocusAreasStep(
      onNext: nextPage,
    ),

    MenuSetupStep(
      onNext: nextPage,
    ),

    FinalSetupStep(
      onFinish: finishSetup,
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

  void finishSetup() {

    Navigator.pushReplacement(
      context,

      MaterialPageRoute(
        builder:
            (_) =>
                const DashboardScreen(),
      ),
    );
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
