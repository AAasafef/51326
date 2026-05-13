import 'package:flutter/material.dart';

import '../../widgets/onboarding_background.dart';
import '../../widgets/onboarding_bottom_button.dart';
import '../../widgets/onboarding_option_card.dart';
import '../../widgets/onboarding_progress_bar.dart';

class WallpaperPreferencesStep
    extends StatefulWidget {

  final VoidCallback onNext;

  const WallpaperPreferencesStep({
    super.key,
    required this.onNext,
  });

  @override
  State<WallpaperPreferencesStep>
      createState() =>
          _WallpaperPreferencesStepState();
}

class _WallpaperPreferencesStepState
    extends State<
        WallpaperPreferencesStep> {

  String selectedWallpaper =
      'Nature';

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
                  currentStep: 13,
                  totalSteps: 18,
                ),

                const Spacer(),

                const Text(
                  'Choose wallpaper style',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight:
                        FontWeight.w300,
                  ),
                ),

                const SizedBox(height: 14),

                const Text(
                  'Ciantis will personalize wallpapers and visual atmospheres throughout your experience.',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 36),

                OnboardingOptionCard(
                  title: 'Nature',

                  subtitle:
                      'Realistic mountains, landscapes, oceans, and calming scenery.',

                  selected:
                      selectedWallpaper ==
                          'Nature',

                  onTap: () {
                    setState(() {
                      selectedWallpaper =
                          'Nature';
                    });
                  },
                ),

                OnboardingOptionCard(
                  title: 'Luxury Minimal',

                  subtitle:
                      'Soft taupes, elegant textures, and airy premium aesthetics.',

                  selected:
                      selectedWallpaper ==
                          'Luxury Minimal',

                  onTap: () {
                    setState(() {
                      selectedWallpaper =
                          'Luxury Minimal';
                    });
                  },
                ),

                OnboardingOptionCard(
                  title: 'Wellness',

                  subtitle:
                      'Relaxing self-care inspired environments and calm visuals.',

                  selected:
                      selectedWallpaper ==
                          'Wellness',

                  onTap: () {
                    setState(() {
                      selectedWallpaper =
                          'Wellness';
                    });
                  },
                ),

                OnboardingOptionCard(
                  title: 'Editorial',

                  subtitle:
                      'Modern fashion-forward luxury and sophisticated visual tones.',

                  selected:
                      selectedWallpaper ==
                          'Editorial',

                  onTap: () {
                    setState(() {
                      selectedWallpaper =
                          'Editorial';
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
