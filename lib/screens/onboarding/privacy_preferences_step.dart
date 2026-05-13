import 'package:flutter/material.dart';

import '../../widgets/onboarding_background.dart';
import '../../widgets/onboarding_bottom_button.dart';
import '../../widgets/onboarding_option_card.dart';
import '../../widgets/onboarding_progress_bar.dart';

class PrivacyPreferencesStep
    extends StatefulWidget {

  final VoidCallback onNext;

  const PrivacyPreferencesStep({
    super.key,
    required this.onNext,
  });

  @override
  State<PrivacyPreferencesStep>
      createState() =>
          _PrivacyPreferencesStepState();
}

class _PrivacyPreferencesStepState
    extends State<
        PrivacyPreferencesStep> {

  String selectedPrivacy =
      'Balanced Privacy';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingBackground(
        child: SafeArea(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(
              horizontal: 24,
              vertical: 18,
            ),

            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                // PROGRESS
                const OnboardingProgressBar(
                  currentStep: 14,
                  totalSteps: 18,
                ),

                const Spacer(),

                const Text(
                  'Privacy preferences',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight:
                        FontWeight.w300,
                  ),
                ),

                const SizedBox(height: 14),

                const Text(
                  'Control how personal your recommendations, analytics, and insights should become.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 36),

                OnboardingOptionCard(
                  title: 'Maximum Privacy',

                  subtitle:
                      'Minimal data collection with local-first personalization.',

                  selected:
                      selectedPrivacy ==
                          'Maximum Privacy',

                  onTap: () {
                    setState(() {
                      selectedPrivacy =
                          'Maximum Privacy';
                    });
                  },
                ),

                OnboardingOptionCard(
                  title: 'Balanced Privacy',

                  subtitle:
                      'Recommended experience with smart personalization and secure protections.',

                  selected:
                      selectedPrivacy ==
                          'Balanced Privacy',

                  onTap: () {
                    setState(() {
                      selectedPrivacy =
                          'Balanced Privacy';
                    });
                  },
                ),

                OnboardingOptionCard(
                  title: 'Enhanced Intelligence',

                  subtitle:
                      'Allow deeper analytics, automation, and predictive life assistance.',

                  selected:
                      selectedPrivacy ==
                          'Enhanced Intelligence',

                  onTap: () {
                    setState(() {
                      selectedPrivacy =
                          'Enhanced Intelligence';
                    });
                  },
                ),

                const Spacer(),

                OnboardingBottomButton(
                  text: 'Continue',

                  onPressed:
                      widget.onNext,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
