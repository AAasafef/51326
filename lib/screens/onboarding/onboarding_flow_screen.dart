import 'package:flutter/material.dart';

import '../dashboard/dashboard_screen.dart';

import 'ai_personality_step.dart';
import 'biometric_setup_step.dart';
import 'daily_rhythm_step.dart';
import 'dashboard_style_step.dart';
import 'final_setup_step.dart';
import 'focus_areas_step.dart';
import 'integrations_step.dart';
import 'menu_setup_step.dart';
import 'name_step.dart';
import 'notification_style_step.dart';
import 'privacy_preferences_step.dart';
import 'profile_photo_step.dart';
import 'sync_preferences_step.dart';
import 'theme_step.dart';
import 'wallpaper_preferences_step.dart';
import 'welcome_step.dart';
import 'widgets_layout_step.dart';

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

    NotificationStyleStep(
      onNext: nextPage,
    ),

    DashboardStyleStep(
      onNext: nextPage,
    ),

    BiometricSetupStep(
      onNext: nextPage,
    ),

    DailyRhythmStep(
      onNext: nextPage,
    ),

    ProfilePhotoStep(
      onNext: nextPage,
    ),

    AiPersonalityStep(
      onNext: nextPage,
    ),

    SyncPreferencesStep(
      onNext: nextPage,
    ),

    IntegrationsStep(
      onNext: nextPage,
    ),

    WallpaperPreferencesStep(
      onNext: nextPage,
    ),

    PrivacyPreferencesStep(
      onNext: nextPage,
    ),

    WidgetsLayoutStep(
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
