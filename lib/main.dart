import 'package:flutter/material.dart';

import 'config/app_config.dart';

import 'screens/dashboard/dashboard_screen.dart';
import 'screens/onboarding/onboarding_flow_screen.dart';

import 'services/onboarding_service.dart';

void main() {
  runApp(
    const CiantisApp(),
  );
}

class CiantisApp
    extends StatelessWidget {
  const CiantisApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final bool skipOnboarding =

        AppConfig
            .skipOnboardingForDevelopment ||

        OnboardingService
                .instance
                .onboardingCompleted;

    return MaterialApp(
      debugShowCheckedModeBanner:
          false,

      title: 'Ciantis',

      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.black,

        fontFamily: 'SFPro',
      ),

      home:
          skipOnboarding
              ? const DashboardScreen()
              : const OnboardingFlowScreen(),
    );
  }
}
