import 'package:soul_meet_num/Screens/chat/chatlist.dart';
import 'package:soul_meet_num/Screens/search/searchmain.dart';
import 'package:soul_meet_num/Screens/lounge/loungeMain.dart';
import 'package:soul_meet_num/Screens/setting/settingmain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class MyHomePage extends StatefulWidget {
  @override _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 4);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {setState(() {});}

  Tab _tabItem(IconData iconData, int index, Color selectedColor){
    return Tab(
      icon: FaIcon(
        iconData,
        size: 26,
        color: _tabController.index == index ? selectedColor : Colors.grey)
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Container(
        color: Color(0xFFF3F3F3),
        child: SafeArea(
          child: Scaffold(           
            body: TabBarView(
              physics: _tabController.index == 0 ? NeverScrollableScrollPhysics() : AlwaysScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                SearchMain(),
                LoungeMain(),
                ChatList(),
                SettingMain(),
              ],
            ),
          bottomNavigationBar: BottomNavigationBar(
        currentIndex: _tabController.index,
        onTap: (int index) {
          _tabController.animateTo(index);
        },
        items: [
          BottomNavigationBarItem(
            icon: _tabController.index == 0
          ? Image.asset('assets/main_active.png', )
          : Image.asset('assets/main_inactive.png', ),
            label: 'Users',
          ),
          BottomNavigationBarItem(
            icon: _tabController.index == 1
                  ? Image.asset('assets/like_active.png')
                  : Image.asset('assets/like_inactive.png' ),
            label: 'Heart',
          ),
          BottomNavigationBarItem(
            icon: _tabController.index == 2
                    ? Image.asset('assets/messages_active.png')
                    : Image.asset('assets/messages_inactive.png'),
            label: 'Comments',
          ),
          BottomNavigationBarItem(
              icon: _tabController.index == 3
                        ? Image.asset('assets/profile_active.png')
                        : Image.asset('assets/profile_inactive.png'),
            label: 'Settings',
          ),
        ],
      ),
    )
    )
    )
    );
  }
}