// // import 'package:flutter/material.dart';
// // import 'package:google_nav_bar/google_nav_bar.dart';
// // import 'package:hive_application/Profile%20Page/Profile_1.dart';
// //
// // import '../Dashboard/Dashboard_1.dart';
// // import '../HomePage/HomePage1.dart';
// // import '../Intro/Page_1.dart';
// // import '../List/List_1.dart';
// // import '../Notification/Notification_1.dart';
// // import '../PlayGround/HomePage_Without_email.dart';
// //
// //
// //
// // class navi_home extends StatefulWidget {
// //   @override
// //   _navi_homeState createState() => _navi_homeState();
// // }
// //
// // class _navi_homeState extends State<navi_home> {
// //   int _selectedIndex = 0;
// //
// //   static List<Widget> _widgetOptions = <Widget>[
// //     // BottomSheetApp(),
// //     HomepageWithoutEmail(),
// //     UniversityListPage(),
// //     DashboardPage(),
// //     Notification_1(),
// //     ProfilePage(),
// //   ];
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           // Main Content
// //           IndexedStack(
// //             index: _selectedIndex,
// //             children: _widgetOptions,
// //           ),
// //           // Bottom Navigation Bar
// //           Positioned(
// //             left: 0,
// //             right: 0,
// //             bottom: 0,
// //             child: Container(
// //               decoration: BoxDecoration(
// //                 color: Colors.white, // Adjust transparency here
// //                 borderRadius: BorderRadius.circular(30), // Curved edges
// //                 boxShadow: [
// //                   BoxShadow(
// //                     blurRadius: 20,
// //                     color: Colors.black.withOpacity(.1),
// //                   ),
// //                 ],
// //               ),
// //               margin: const EdgeInsets.only(left: 16, bottom: 16,top: 16),
// //               child: Padding(
// //                 padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //                 child: GNav(
// //                   backgroundColor: Colors.transparent,
// //                   rippleColor: Colors.grey[300]!,
// //                   hoverColor: Colors.grey[100]!,
// //                   gap: 10,
// //                   activeColor: Colors.white,
// //                   iconSize: 30,
// //                   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
// //                   duration: const Duration(milliseconds: 200),
// //                   tabBackgroundColor: const Color(0xff3C97D3),
// //                   color: Colors.black, // Inactive icon color
// //                   tabs: const [
// //                     GButton(icon: Icons.home_outlined),
// //                     GButton(icon: Icons.menu),
// //                     GButton(icon: Icons.grid_view),
// //                     GButton(icon: Icons.crop_square_outlined),
// //                     GButton(icon: Icons.person_outline),
// //                   ],
// //                   selectedIndex: _selectedIndex,
// //                   onTabChange: (index) {
// //                     setState(() {
// //                       _selectedIndex = index;
// //                     });
// //                   },
// //                 ),
// //               ),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// //
// // }

// import 'package:flutter/material.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:hive_application/Profile%20Page/Profile_1.dart';

// import '../Dashboard/Dashboard_1.dart';
// import '../HomePage/HomePage1.dart';
// import '../Intro/Page_1.dart';
// import '../List/List_1.dart';
// import '../Notification/Notification_1.dart';
// import '../HomePage/HomePage_Without_email.dart';

// class navi_home extends StatefulWidget {
//   const navi_home({super.key});

//   @override
//   _navi_homeState createState() => _navi_homeState();
// }

// class _navi_homeState extends State<navi_home> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     HomepageWithoutEmail(
//         // GoToProfile: () {
//         //     setState(() {
//         //       _selectedIndex = 2;
//         //     });
//         //   },
//         ),
//     UniversityListPage(),
//     DashboardPage(),
//     const Notification_1(),
//     ProfilePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             // Main Content
//             IndexedStack(
//               index: _selectedIndex,
//               children: _widgetOptions,
//             ),
//             // Bottom Navigation Bar
//             Positioned(
//               left: 0,
//               right: 0,
//               bottom: 0,
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white, // Adjust transparency here
//                   borderRadius:
//                       BorderRadius.circular(screenWidth * 0.5), // Curved edges
//                   boxShadow: [
//                     BoxShadow(
//                       blurRadius: 20,
//                       color: Colors.black.withOpacity(.1),
//                     ),
//                   ],
//                 ),
//                 margin: EdgeInsets.only(
//                   left: screenWidth * 0.04,
//                   bottom: screenHeight * 0.02,
//                   top: screenHeight * 0.01,
//                 ),
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: screenWidth * 0.04,
//                     vertical: screenHeight * 0.01,
//                   ),
//                   child: GNav(
//                     backgroundColor: Colors.transparent,
//                     rippleColor: Colors.grey[300]!,
//                     hoverColor: Colors.grey[100]!,
//                     gap: screenWidth * 0.02,
//                     activeColor: Colors.white,
//                     iconSize: screenWidth * 0.07,
//                     padding: EdgeInsets.symmetric(
//                       horizontal: screenWidth * 0.05,
//                       vertical: screenHeight * 0.01,
//                     ),
//                     duration:  Duration(milliseconds: 200),
//                     tabBackgroundColor:  Color(0xff3C97D3),
//                     color: Colors.black, // Inactive icon color
//                     tabs: [
//                       // GButton(icon: Icons.home_outlined),
//                       // GButton(
//                       //   icon: Icons.home_outlined,
//                       //   leading: Image.asset('assets/home_Icon.png'),
//                       // ),

//                       // GButton(
//                       //   icon: Icons.menu,
//                       //   leading: Image.asset('assets/List_Icon.png'),
//                       // ),
//                       // GButton(
//                       //   icon: Icons.grid_view,
//                       //   leading: Image.asset('assets/Dashboard_Icon.png'),
//                       // ),
//                       // GButton(
//                       //   icon: Icons.crop_square_outlined,
//                       //   leading: Image.asset('assets/Noti_Icon.png'),
//                       // ),
//                       // GButton(
//                       //   icon: Icons.person_outline,
//                       //   leading: Image.asset('assets/Profile_Icon.png'),
//                       // ),
//                       List.generate(_imagePaths.length, (index) {
//               return GButton(
//                 leading: ColorFiltered(
//                   colorFilter: ColorFilter.mode(
//                     _selectedIndex == index ? Colors.white : Colors.black,
//                     BlendMode.srcIn, // This applies the color tint
//                   ),
//                   child: Image.asset(
//                     _imagePaths[index],
//                     width: 24,
//                     height: 24,
//                   ),
//                 ),
//               );
//             }),
//                     ],
//                     selectedIndex: _selectedIndex,
//                     onTabChange: (index) {
//                       setState(() {
//                         _selectedIndex = index;
//                       });
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hive_application/Dashboard/Dashboard_1.dart';
import 'package:hive_application/HomePage/HomePage_Without_email.dart';
import 'package:hive_application/List/List_1.dart';
import 'package:hive_application/Notification/Notification_1.dart';
import 'package:hive_application/Profile%20Page/Profile_1.dart';

class navi_home extends StatefulWidget {
  const navi_home({super.key});

  @override
  _navi_homeState createState() => _navi_homeState();
}

class _navi_homeState extends State<navi_home> {
  int _selectedIndex = 0;

  // List of image paths for tabs
  final List<String> _imagePaths = [
    'assets/home_Icon.png',
    'assets/List_Icon.png',
    'assets/Dashboard_Icon.png',
    'assets/Noti_Icon.png',
    'assets/Profile_Icon.png',
  ];

  List pages = [
    HomepageWithoutEmail(),
    UniversityListPage(),
    DashboardPage(),
    Notification_1(),
    ProfilePage(),
  ];

  // List of labels for the navigation buttons
  // final List<String> _labels = [
  //   "Home",
  //   "List",
  //   "Dashboard",
  //   "Notifications",
  //   "Profile"
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        margin: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: GNav(
            rippleColor: Colors.grey[300]!,
            hoverColor: Colors.grey[100]!,
            gap: 10,
            activeColor: Colors.white,
            iconSize: 30,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: const Duration(milliseconds: 200),
            tabBackgroundColor: Color(0xff3C97D3), // Active tab color
            color: Colors.black, // Inactive color
            tabs: List.generate(_imagePaths.length, (index) {
              return GButton(
                icon: Icons.circle, // Dummy icon (hidden)
                //text: _labels[index],
                leading: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    _selectedIndex == index ? Colors.white : Colors.black,
                    BlendMode.srcIn, // This applies the color tint
                  ),
                  child: Image.asset(
                    _imagePaths[index],
                    width: 24,
                    height: 24,
                  ),
                ),
              );
            }),
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
     void navigateToPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  }
}

 

