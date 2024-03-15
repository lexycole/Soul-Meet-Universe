import 'package:flutter/material.dart';
import 'package:soul_meet_num/Screens/main_screen/main_screen.dart';
import 'package:soul_meet_num/Screens/matches_screen/matches_screen.dart';
import 'package:soul_meet_num/Screens/profile_details_screen/display_profile_screen.dart';
import 'package:soul_meet_num/pages/chat_page.dart';


class BottomNavTabs extends StatefulWidget {
  BottomNavTabs({Key? key, required int initialIndex}) : super(key: key);

  @override
  _BottomNavTabsState createState() => _BottomNavTabsState();
}

class _BottomNavTabsState extends State<BottomNavTabs>
    with TickerProviderStateMixin {
  late TabController tabController;
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  List<Widget> myChilders = const [
    MainScreen(),
    MatchesScreen(),
    DisplayProfileScreen(),
    ChatPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: tabController,
            children: myChilders),
        bottomNavigationBar: SizedBox(
          height: 70.0,
          child: BottomAppBar(
            child: TabBar(
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                indicator: const UnderlineTabIndicator(
                    insets: EdgeInsets.only(bottom: kBottomNavigationBarHeight),
                    borderSide: BorderSide(color: Color(0xFFFFC700), width: 2)),
                labelColor: Color(0xFFFFC700),
                unselectedLabelColor: Colors.grey,
                controller: tabController,
                tabs: [
                  Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: selectedIndex == 0
                        ? Image.asset('main_active.png', width: 24, height: 24)
                        : Image.asset(
                            'main_inactive.png',
                          ),
                  ),
                  Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: selectedIndex == 1
                        ? Image.asset('like_active.png', width: 24, height: 24)
                        : Image.asset('like_inactive.png'),
                  ),
                  Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: selectedIndex == 2
                        ? Image.asset('messages_active.png',
                            width: 24, height: 24)
                        : Image.asset('messages_inactive.png'),
                  ),
                  Tab(
                    iconMargin: EdgeInsets.only(bottom: 4),
                    icon: selectedIndex == 3
                        ? Image.asset('profile_active.png',
                            width: 24, height: 24)
                        : Image.asset('profile_inactive.png'),
                  )
                ]),
          ),
        ));
  }
}
