import 'package:flutter/material.dart';

import '../../theme/ciantis_theme.dart';
import '../../widgets/glass_container.dart';
import '../../widgets/luxury_button.dart';

class WelcomeStep extends StatelessWidget {
  const WelcomeStep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: CiantisTheme.mainGradient,
        ),
        child: Stack(
          children: [
            Container(
              color: Colors.black.withOpacity(
                CiantisTheme.overlayOpacity,
              ),
            ),

            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 18,
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 40),

                    // LOGO
                    Center(
                      child: GlassContainer(
                        padding: const EdgeInsets.all(20),
                        borderRadius: 28,
                        child: const Text(
                          'C',
                          style: TextStyle(
                            color: CiantisTheme.white,
                            fontSize: 38,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ),

                    const Spacer(),

                    const Text(
                      'Welcome to',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CiantisTheme.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    const Text(
                      'ciantis',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CiantisTheme.white,
                        fontSize: 46,
                        fontWeight: FontWeight.w300,
                      ),
                    ),

                    const SizedBox(height: 16),

                    const Text(
                      'Your personal operating system for clarity, focus, family, and growth.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: CiantisTheme.whiteSoft,
                        fontSize: 15,
                        height: 1.5,
                      ),
                    ),

                    const Spacer(),

                    LuxuryButton(
                      text: 'Begin',
                      icon: Icons.arrow_forward_rounded,
                      onPressed: () {},
                    ),

                    const SizedBox(height: 22),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
