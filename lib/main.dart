import 'package:flutter/material.dart';

import 'config/app_config.dart';

import 'screens/dashboard/dashboard_screen.dart';
import 'screens/onboarding/onboarding_flow_screen.dart';

import 'theme/ciantis_theme.dart';

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
          AppConfig
                  .skipOnboardingForDevelopment
              ? const DashboardScreen()
              : const OnboardingFlowScreen(),
    );
  }
}
