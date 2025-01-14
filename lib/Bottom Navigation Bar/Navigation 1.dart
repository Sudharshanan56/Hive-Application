import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hive_application/Profile%20Page/Profile_1.dart';

import '../Dashboard/Dashboard_1.dart';
import '../HomePage/HomePage1.dart';
import '../Intro/Page_1.dart';
import '../List/List_1.dart';
import '../Notification/Notification_1.dart';



class navi_home extends StatefulWidget {
  @override
  _navi_homeState createState() => _navi_homeState();
}

class _navi_homeState extends State<navi_home> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    BottomSheetApp(),
    UniversityListPage(),
    DashboardPage(),
    Notification_1(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Main Content
          IndexedStack(
            index: _selectedIndex,
            children: _widgetOptions,
          ),
          // Bottom Navigation Bar
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white, // Adjust transparency here
                borderRadius: BorderRadius.circular(30), // Curved edges
                boxShadow: [
                  BoxShadow(
                    blurRadius: 20,
                    color: Colors.black.withOpacity(.1),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(left: 16, bottom: 16,top: 16),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: GNav(
                  backgroundColor: Colors.transparent,
                  rippleColor: Colors.grey[300]!,
                  hoverColor: Colors.grey[100]!,
                  gap: 10,
                  activeColor: Colors.white,
                  iconSize: 30,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  duration: const Duration(milliseconds: 200),
                  tabBackgroundColor: const Color(0xff3C97D3),
                  color: Colors.black, // Inactive icon color
                  tabs: const [
                    GButton(icon: Icons.home_outlined),
                    GButton(icon: Icons.menu),
                    GButton(icon: Icons.grid_view),
                    GButton(icon: Icons.crop_square_outlined),
                    GButton(icon: Icons.person_outline),
                  ],
                  selectedIndex: _selectedIndex,
                  onTabChange: (index) {
                    setState(() {
                      _selectedIndex = index;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}
