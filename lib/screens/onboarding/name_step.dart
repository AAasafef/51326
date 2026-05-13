import 'package:flutter/material.dart';

import '../../widgets/luxury_text_field.dart';
import '../../widgets/onboarding_background.dart';
import '../../widgets/onboarding_bottom_button.dart';
import '../../widgets/onboarding_progress_bar.dart';

class NameStep extends StatefulWidget {
  const NameStep({super.key});

  @override
  State<NameStep> createState() =>
      _NameStepState();
}

class _NameStepState
    extends State<NameStep> {

  final TextEditingController
      nameController =
      TextEditingController();

  final TextEditingController
      subtitleController =
      TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    subtitleController.dispose();

    super.dispose();
  }

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
                  currentStep: 1,
                  totalSteps: 18,
                ),

                const Spacer(),

                const Text(
                  'Tell us about you',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36,
                    fontWeight:
                        FontWeight.w300,
                  ),
                ),

                const SizedBox(height: 14),

                const Text(
                  'Personalize your experience and create your luxury life system.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 40),

                LuxuryTextField(
                  hintText:
                      'Preferred Name',
                  icon:
                      Icons.person_outline,

                  controller:
                      nameController,
                ),

                const SizedBox(height: 18),

                LuxuryTextField(
                  hintText:
                      'Subtitle or Motto',
                  icon:
                      Icons.edit_outlined,

                  controller:
                      subtitleController,
                ),

                const Spacer(),

                OnboardingBottomButton(
                  text: 'Continue',

                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
