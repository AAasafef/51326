import 'package:flutter/material.dart';

import '../../widgets/dashboard_header.dart';
import '../../widgets/dashboard_search_bar.dart';
import '../../widgets/luxury_bottom_nav_bar.dart';
import '../../widgets/luxury_side_menu.dart';
import '../../widgets/quick_action_pill.dart';
import '../../widgets/section_title.dart';
import '../../widgets/today_overview_card.dart';
import '../../widgets/welcome_banner_card.dart';
import '../../widgets/glass_container.dart';

class DashboardScreen
    extends StatefulWidget {

  const DashboardScreen({
    super.key,
  });

  @override
  State<DashboardScreen>
      createState() =>
          _DashboardScreenState();
}

class _DashboardScreenState
    extends State<
        DashboardScreen> {

  int currentIndex = 0;

  bool menuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color(0xFF0E0E0E),

      bottomNavigationBar:
          LuxuryBottomNavBar(
        currentIndex:
            currentIndex,

        onTap: (index) {

          setState(() {
            currentIndex =
                index;
          });
        },
      ),

      body: Stack(
        children: [

          // MAIN CONTENT
          SafeArea(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 18,
              ),

              child:
                  SingleChildScrollView(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment
                          .start,

                  children: [

                    // HEADER
                    Row(
                      children: [

                        GestureDetector(
                          onTap: () {

                            setState(() {
                              menuOpen =
                                  !menuOpen;
                            });
                          },

                          child: Container(
                            height: 48,
                            width: 48,

                            decoration:
                                BoxDecoration(
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

                            child: const Icon(
                              Icons.menu,
                              color:
                                  Colors.white,
                            ),
                          ),
                        ),

                        const SizedBox(
                          width: 16,
                        ),

                        const Expanded(
                          child:
                              DashboardHeader(),
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 22,
                    ),

                    // SEARCH
                    const DashboardSearchBar(),

                    const SizedBox(
                      height: 22,
                    ),

                    // WELCOME BANNER
                    const WelcomeBannerCard(),

                    const SizedBox(
                      height: 22,
                    ),

                    // QUICK ACTIONS
                    SizedBox(
                      height: 52,

                      child: ListView(
                        scrollDirection:
                            Axis.horizontal,

                        children: [

                          QuickActionPill(
                            icon:
                                Icons.add,

                            text:
                                'New Task',

                            onTap: () {},
                          ),

                          const SizedBox(
                            width: 12,
                          ),

                          QuickActionPill(
                            icon:
                                Icons.favorite,

                            text:
                                'Log Health',

                            onTap: () {},
                          ),

                          const SizedBox(
                            width: 12,
                          ),

                          QuickActionPill(
                            icon:
                                Icons.restaurant,

                            text:
                                'Track Meal',

                            onTap: () {},
                          ),

                          const SizedBox(
                            width: 12,
                          ),

                          QuickActionPill(
                            icon:
                                Icons.auto_awesome,

                            text:
                                'Focus Mode',

                            onTap: () {},
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 28,
                    ),

                    // TODAY OVERVIEW
                    const TodayOverviewCard(),

                    const SizedBox(
                      height: 26,
                    ),

                    // SPACES TITLE
                    const SectionTitle(
                      title:
                          'Your Spaces',

                      actionText:
                          'Customize',
                    ),

                    const SizedBox(
                      height: 18,
                    ),

                    GridView.count(
                      crossAxisCount: 2,

                      shrinkWrap: true,

                      physics:
                          const NeverScrollableScrollPhysics(),

                      mainAxisSpacing:
                          18,

                      crossAxisSpacing:
                          18,

                      childAspectRatio:
                          .95,

                      children: const [

                        _DashboardCard(
                          title:
                              'Family',

                          icon:
                              Icons.home,
                        ),

                        _DashboardCard(
                          title:
                              'Health',

                          icon: Icons
                              .favorite,
                        ),

                        _DashboardCard(
                          title:
                              'Goals',

                          icon: Icons
                              .flag_outlined,
                        ),

                        _DashboardCard(
                          title:
                              'Calendar',

                          icon: Icons
                              .calendar_month,
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 120,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // OVERLAY
          if (menuOpen)
            GestureDetector(
              onTap: () {

                setState(() {
                  menuOpen = false;
                });
              },

              child: Container(
                color:
                    Colors.black
                        .withOpacity(
                  .45,
                ),
              ),
            ),

          // SIDE MENU
          AnimatedPositioned(
            duration:
                const Duration(
              milliseconds: 260,
            ),

            curve: Curves.easeInOut,

            left:
                menuOpen
                    ? 0
                    : -320,

            top: 0,
            bottom: 0,

            child: LuxurySideMenu(
              selectedIndex:
                  currentIndex,

              onItemSelected:
                  (index) {

                setState(() {

                  currentIndex =
                      index;

                  menuOpen =
                      false;
                });
              },
            ),
          ),
        ],
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
