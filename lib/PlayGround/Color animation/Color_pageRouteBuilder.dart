// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Color_PageRouteBuilder(),
//     );
//   }
// }

// class Color_PageRouteBuilder extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Center(
//             child: GestureDetector(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   PageRouteBuilder(
//                     pageBuilder: (context, animation, secondaryAnimation) =>
//                         NextPage(),
//                     transitionDuration: const Duration(
//                         seconds: 5), // Set animation duration to 2 seconds
//                   ),
//                 );
//               },
//               child: Hero(
//                 tag: 'blueContainer',
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: Container(
//                     width: 100,
//                     height: 100,
//                     color: Colors.blue,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class NextPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Hero(
//             tag: 'blueContainer',
//             child: Container(
//               color: Colors.blue,
//               child: Center(
//                 child: Align(
//                   alignment: Alignment.bottomRight,
//                   child: Text(
//                     'Next Page',
//                     style: TextStyle(color: Colors.white, fontSize: 24),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorPageRouteBuilder(),
    );
  }
}

class ColorPageRouteBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      NextPage(),
                  transitionDuration: const Duration(seconds: 5),
                ),
              );
            },
            child: Hero(
              tag: 'blueContainer',
              child: Container(
                color: Colors
                    .transparent, // Transparent background for smooth transition
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Hero(
        tag: 'blueContainer',
        child: Container(
          color: Colors.blue, // Fullscreen blue background
          child: Center(
            child: Text(
              'Next Page',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
