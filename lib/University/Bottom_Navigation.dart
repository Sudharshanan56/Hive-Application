import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hive_application/Profile%20Page/Profile_1.dart';

import '../Dashboard/Dashboard_1.dart';
import '../Intro/Page_1.dart';
import '../List/List_1.dart';
import '../Notification/Notification_1.dart';
import 'Intro_1.dart';
import 'Notification.dart';



class University_navi extends StatefulWidget {
  @override
  _University_naviState createState() => _University_naviState();
}

class _University_naviState extends State<University_navi> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    Intro1(),
    // UniversityListPage(),
    Notifications(),
    // Notification_1(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body:
      IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),

      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30), // Curved edges
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        margin: EdgeInsets.only(left: 16,top: 16,bottom: 16), // Margin for spacing around the bar
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 10,
            activeColor: Colors.white,
            iconSize: 30,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 200),
            tabBackgroundColor: Color(0xff3C97D3),
            // Active tab background color
            color: Colors.black, // Inactive icon color
            tabs: [
              // GButton(
              //   icon: Icons.home_outlined,
              //   // text: 'Home',
              // ),
              // GButton(
              //   icon: Icons.menu,
              //   // text: "History",
              // ),
              GButton(
                icon: Icons.grid_view,
                // text: 'Profile',
              ),
              GButton(
                icon:Icons.crop_square_outlined,
                // text: 'Profile',
              ),
              GButton(
                icon: Icons.person_outline,
                // text: "History",
              ),

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
    );
  }
}
