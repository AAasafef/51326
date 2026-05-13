import 'package:flutter/material.dart';

import '../../widgets/dashboard_header.dart';
import '../../widgets/glass_container.dart';

class DashboardScreen
    extends StatelessWidget {

  const DashboardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFF0E0E0E),

      body: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 18,
          ),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,

              children: [

                // HEADER
                const DashboardHeader(),

                const SizedBox(height: 28),

                // HERO CARD
                GlassContainer(
                  borderRadius: 34,

                  padding:
                      const EdgeInsets.all(
                    24,
                  ),

                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,

                    children: [

                      Text(
                        'Today',
                        style: TextStyle(
                          color: Colors.white
                              .withOpacity(
                            .65,
                          ),

                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 10),

                      const Text(
                        'Your Life OS is synced and ready.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight:
                              FontWeight.w300,
                          height: 1.3,
                        ),
                      ),

                      const SizedBox(height: 18),

                      Text(
                        'Your routines, wellness, goals, and family systems are organized beautifully in one place.',
                        style: TextStyle(
                          color: Colors.white
                              .withOpacity(
                            .70,
                          ),

                          fontSize: 14,
                          height: 1.6,
                        ),
                      ),

                      const SizedBox(height: 24),

                      Row(
                        children: [

                          _heroButton(
                            icon:
                                Icons.auto_awesome,

                            text:
                                'Focus Mode',
                          ),

                          const SizedBox(width: 14),

                          _heroButton(
                            icon:
                                Icons.favorite_border,

                            text:
                                'Wellness',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 26),

                // SECTION TITLE
                const Text(
                  'Your Spaces',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight:
                        FontWeight.w300,
                  ),
                ),

                const SizedBox(height: 18),

                GridView.count(
                  crossAxisCount: 2,

                  shrinkWrap: true,

                  physics:
                      const NeverScrollableScrollPhysics(),

                  mainAxisSpacing: 18,
                  crossAxisSpacing: 18,

                  childAspectRatio: .95,

                  children: const [

                    _DashboardCard(
                      title: 'Family',
                      icon: Icons.home,
                    ),

                    _DashboardCard(
                      title: 'Health',
                      icon: Icons.favorite,
                    ),

                    _DashboardCard(
                      title: 'Goals',
                      icon:
                          Icons.flag_outlined,
                    ),

                    _DashboardCard(
                      title: 'Calendar',
                      icon:
                          Icons.calendar_month,
                    ),
                  ],
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _heroButton({
    required IconData icon,
    required String text,
  }) {
    return Expanded(
      child: Container(
        height: 54,

        decoration: BoxDecoration(
          borderRadius:
              BorderRadius.circular(
            20,
          ),

          color:
              Colors.white
                  .withOpacity(
            .08,
          ),
        ),

        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.center,

          children: [

            Icon(
              icon,
              color: Colors.white,
              size: 20,
            ),

            const SizedBox(width: 10),

            Text(
              text,

              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DashboardCard
    extends StatelessWidget {

  final String title;

  final IconData icon;

  const _DashboardCard({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      borderRadius: 30,

      padding:
          const EdgeInsets.all(
        20,
      ),

      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start,

        children: [

          Container(
            height: 54,
            width: 54,

            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(
                18,
              ),

              color:
                  Colors.white
                      .withOpacity(
                .08,
              ),
            ),

            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),

          const Spacer(),

          Text(
            title,

            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight:
                  FontWeight.w300,
            ),
          ),

          const SizedBox(height: 6),

          Text(
            'Open space',

            style: TextStyle(
              color:
                  Colors.white
                      .withOpacity(
                .55,
              ),

              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}
