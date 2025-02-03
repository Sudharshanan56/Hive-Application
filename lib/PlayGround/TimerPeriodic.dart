// // // // // import 'dart:async';
// // // // // import 'package:flutter/material.dart';

// // // // // class CameraStatusAppBar extends StatefulWidget implements PreferredSizeWidget {
// // // // //   @override
// // // // //   _CameraStatusAppBarState createState() => _CameraStatusAppBarState();

// // // // //   @override
// // // // //   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// // // // // }

// // // // // class _CameraStatusAppBarState extends State<CameraStatusAppBar> {
// // // // //   bool showText = true;
// // // // //   late Timer _timer;

// // // // //   @override
// // // // //   void initState() {
// // // // //     super.initState();
// // // // //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// // // // //       setState(() {
// // // // //         showText = !showText; // Toggle between text and icon
// // // // //       });
// // // // //     });
// // // // //   }

// // // // //   @override
// // // // //   void dispose() {
// // // // //     _timer.cancel();
// // // // //     super.dispose();
// // // // //   }

// // // // //   @override
// // // // //   Widget build(BuildContext context) {
// // // // //     return AppBar(
// // // // //       backgroundColor: Colors.redAccent,
// // // // //       title: Container(
// // // // //         padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
// // // // //         decoration: BoxDecoration(
// // // // //           color: Colors.white,
// // // // //           borderRadius: BorderRadius.circular(20),
// // // // //         ),
// // // // //         child: showText
// // // // //             ? Text(
// // // // //                 "Camera is on",
// // // // //                 style: TextStyle(color: Colors.redAccent),
// // // // //               )
// // // // //             : Icon(Icons.videocam, color: Colors.redAccent),
// // // // //       ),
// // // // //     );
// // // // //   }
// // // // // }
// // // // import 'dart:async';
// // // // import 'package:flutter/material.dart';

// // // // class AccessStatusAppBar extends StatefulWidget implements PreferredSizeWidget {
// // // //   @override
// // // //   _AccessStatusAppBarState createState() => _AccessStatusAppBarState();

// // // //   @override
// // // //   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// // // // }

// // // // class _AccessStatusAppBarState extends State<AccessStatusAppBar> {
// // // //   int statusIndex = 0;
// // // //   late Timer _timer;

// // // //   final List<Map<String, dynamic>> statuses = [
// // // //     {"text": "Camera is on", "icon": null}, // Show text
// // // //     {"text": null, "icon": Icons.videocam}, // Show icon
// // // //     {"text": "Microphone is on", "icon": null}, // Show text
// // // //     {"text": null, "icon": Icons.mic}, // Show icon
// // // //     {"text": "Screen monitoring is on", "icon": null}, // Show text
// // // //     {"text": null, "icon": Icons.screen_share}, // Show icon
// // // //   ];

// // // //   @override
// // // //   void initState() {
// // // //     super.initState();
// // // //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// // // //       setState(() {
// // // //         statusIndex =
// // // //             (statusIndex + 1) % statuses.length; // Cycle through states
// // // //       });
// // // //     });
// // // //   }

// // // //   @override
// // // //   void dispose() {
// // // //     _timer.cancel();
// // // //     super.dispose();
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return AppBar(
// // // //       backgroundColor: Colors.redAccent,
// // // //       title: Container(
// // // //         padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
// // // //         decoration: BoxDecoration(
// // // //           color: Colors.white,
// // // //           borderRadius: BorderRadius.circular(20),
// // // //         ),
// // // //         child: Row(
// // // //           mainAxisSize: MainAxisSize.min,
// // // //           children: [
// // // //             if (statuses[statusIndex]["icon"] !=
// // // //                 null) // Display icon if present
// // // //               Icon(statuses[statusIndex]["icon"], color: Colors.redAccent),
// // // //             if (statuses[statusIndex]["text"] !=
// // // //                 null) // Display text if present
// // // //               Text(
// // // //                 statuses[statusIndex]["text"],
// // // //                 style: TextStyle(color: Colors.redAccent),
// // // //               ),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }
// // // import 'dart:async';
// // // import 'package:flutter/material.dart';

// // // class AccessStatusAppBar extends StatefulWidget implements PreferredSizeWidget {
// // //   @override
// // //   _AccessStatusAppBarState createState() => _AccessStatusAppBarState();

// // //   @override
// // //   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// // // }

// // // class _AccessStatusAppBarState extends State<AccessStatusAppBar> {
// // //   int statusIndex = 0;
// // //   late Timer _timer;

// // //   final List<Map<String, dynamic>> statuses = [
// // //     {"text": "Camera is on", "icon": null}, // Show text
// // //     {"text": null, "icon": Icons.videocam}, // Show icon
// // //     {"text": "Microphone is on", "icon": null}, // Show text
// // //     {"text": null, "icon": Icons.mic}, // Show icon
// // //     {"text": "Screen monitoring is on", "icon": null}, // Show text
// // //     {"text": null, "icon": Icons.screen_share}, // Show icon
// // //   ];

// // //   @override
// // //   void initState() {
// // //     super.initState();
// // //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// // //       setState(() {
// // //         statusIndex =
// // //             (statusIndex + 1) % statuses.length; // Cycle through states
// // //       });
// // //     });
// // //   }

// // //   @override
// // //   void dispose() {
// // //     _timer.cancel();
// // //     super.dispose();
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     bool isText = statuses[statusIndex]["text"] != null;

// // //     return AppBar(
// // //       backgroundColor: Colors.redAccent,
// // //       title: AnimatedContainer(
// // //         duration: Duration(milliseconds: 5000), // Smooth animation effect
// // //         curve: Curves.easeInOut,
// // //         padding: EdgeInsets.symmetric(
// // //           horizontal: isText ? 12 : 8, // Adjust padding for text vs. icon
// // //           vertical: 6,
// // //         ),
// // //         decoration: BoxDecoration(
// // //           color: Colors.white,
// // //           borderRadius: BorderRadius.circular(20),
// // //         ),
// // //         child: Row(
// // //           mainAxisSize: MainAxisSize.min,
// // //           children: [
// // //             if (statuses[statusIndex]["icon"] != null) // Show icon
// // //               Icon(statuses[statusIndex]["icon"],
// // //                   color: Colors.redAccent, size: 24),
// // //             if (statuses[statusIndex]["text"] != null) // Show text
// // //               Padding(
// // //                 padding: EdgeInsets.symmetric(horizontal: 8),
// // //                 child: Text(
// // //                   statuses[statusIndex]["text"],
// // //                   style: TextStyle(color: Colors.redAccent),
// // //                 ),
// // //               ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }
// // import 'dart:async';
// // import 'package:flutter/material.dart';

// // class AccessStatusAppBar extends StatefulWidget implements PreferredSizeWidget {
// //   @override
// //   _AccessStatusAppBarState createState() => _AccessStatusAppBarState();

// //   @override
// //   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// // }

// // class _AccessStatusAppBarState extends State<AccessStatusAppBar> {
// //   int statusIndex = 0;
// //   late Timer _timer;

// //   final List<Map<String, dynamic>> statuses = [
// //     {
// //       "text": "Camera is on",
// //       "icon": null,
// //       "duration": Duration(milliseconds: 1000)
// //     }, // Slow transition
// //     {
// //       "text": null,
// //       "icon": Icons.videocam,
// //       "duration": Duration(milliseconds: 500)
// //     }, // Fast transition
// //     {
// //       "text": "Microphone is on",
// //       "icon": null,
// //       "duration": Duration(milliseconds: 1000)
// //     }, // Slow transition
// //     {
// //       "text": null,
// //       "icon": Icons.mic,
// //       "duration": Duration(milliseconds: 500)
// //     }, // Fast transition
// //     {
// //       "text": "Screen monitoring is on",
// //       "icon": null,
// //       "duration": Duration(milliseconds: 1000)
// //     }, // Slow transition
// //     {
// //       "text": null,
// //       "icon": Icons.screen_share,
// //       "duration": Duration(milliseconds: 500)
// //     }, // Fast transition
// //   ];

// //   @override
// //   void initState() {
// //     super.initState();
// //     _startTimer();
// //   }

// //   void _startTimer() {
// //     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
// //       setState(() {
// //         statusIndex =
// //             (statusIndex + 1) % statuses.length; // Cycle through states
// //       });
// //     });
// //   }

// //   @override
// //   void dispose() {
// //     _timer.cancel();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     bool isText = statuses[statusIndex]["text"] != null;
// //     Duration animationDuration = statuses[statusIndex]["duration"];

// //     return AppBar(
// //       backgroundColor: Colors.redAccent,
// //       title: AnimatedContainer(
// //         duration: animationDuration, // Different duration for text vs icon
// //         curve: Curves.easeInOut, // Smooth transition
// //         padding: EdgeInsets.symmetric(
// //           horizontal: isText ? 12 : 8, // Adjust padding for text vs. icon
// //           vertical: 6,
// //         ),
// //         decoration: BoxDecoration(
// //           color: Colors.white,
// //           borderRadius: BorderRadius.circular(20),
// //         ),
// //         child: Row(
// //           mainAxisSize: MainAxisSize.min,
// //           children: [
// //             if (statuses[statusIndex]["icon"] != null) // Show icon
// //               Icon(statuses[statusIndex]["icon"],
// //                   color: Colors.redAccent, size: 24),
// //             if (statuses[statusIndex]["text"] != null) // Show text
// //               Padding(
// //                 padding: EdgeInsets.symmetric(horizontal: 8),
// //                 child: Text(
// //                   statuses[statusIndex]["text"],
// //                   style: TextStyle(color: Colors.redAccent),
// //                 ),
// //               ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'dart:async';
// import 'package:flutter/material.dart';

// class AccessStatusAppBar extends StatefulWidget implements PreferredSizeWidget {
//   @override
//   _AccessStatusAppBarState createState() => _AccessStatusAppBarState();

//   @override
//   Size get preferredSize => Size.fromHeight(kToolbarHeight);
// }

// class _AccessStatusAppBarState extends State<AccessStatusAppBar> {
//   int statusIndex = 0;
//   bool showText = true;
//   double containerWidth = 140.0;
//   double textOpacity = 0.0;
//   Alignment textAlignment = Alignment.centerLeft;

//   late Timer _timer;

//   final List<Map<String, dynamic>> statuses = [
//     {"text": "Camera is on", "icon": Icons.videocam},
//     {"text": "Microphone is on", "icon": Icons.mic},
//     {"text": "Screen is recording", "icon": Icons.screen_share},
//   ];

//   @override
//   void initState() {
//     super.initState();
//     _startAnimation();
//   }

//   void _startAnimation() {
//     _timer = Timer.periodic(Duration(seconds: 3), (timer) {
//       setState(() {
//         textAlignment = Alignment.centerRight; // Move text out to the right
//         textOpacity = 0.0; // Start fading out
//       });

//       Future.delayed(Duration(milliseconds: 600), () {
//         setState(() {
//           showText = !showText; // Switch between text and icon
//           statusIndex = (statusIndex + 1) % statuses.length;
//           containerWidth = showText ? 140.0 : 50.0; // Shrink for icon
//         });

//         Future.delayed(Duration(milliseconds: 300), () {
//           setState(() {
//             textAlignment = Alignment.centerLeft; // Slide text in from left
//             textOpacity = 1.0; // Fade in the new text
//           });
//         });
//       });
//     });

//     // Start with text appearing slowly
//     Future.delayed(Duration(milliseconds: 500), () {
//       setState(() {
//         textOpacity = 1.0;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.redAccent,
//       title: AnimatedContainer(
//         duration: Duration(milliseconds: 600),
//         curve: Curves.easeInOut,
//         width: containerWidth,
//         height: 40,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(20),
//         ),
//         child: Stack(
//           children: [
//             Align(
//               alignment: Alignment.center,
//               child: AnimatedOpacity(
//                 duration: Duration(milliseconds: 500),
//                 opacity: showText ? 0.0 : 1.0,
//                 child: Icon(
//                   statuses[statusIndex]["icon"],
//                   color: Colors.redAccent,
//                   size: 24,
//                 ),
//               ),
//             ),
//             AnimatedAlign(
//               duration: Duration(milliseconds: 600),
//               alignment: textAlignment,
//               curve: Curves.easeInOut,
//               child: AnimatedOpacity(
//                 duration: Duration(milliseconds: 500),
//                 opacity: showText ? textOpacity : 0.0,
//                 child: Padding(
//                   padding: EdgeInsets.only(left: 10),
//                   child: Text(
//                     statuses[statusIndex]["text"]!,
//                     style: TextStyle(color: Colors.redAccent),
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

import 'dart:async';
import 'package:flutter/material.dart';

class AccessStatusAppBar extends StatefulWidget implements PreferredSizeWidget {
  @override
  _AccessStatusAppBarState createState() => _AccessStatusAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _AccessStatusAppBarState extends State<AccessStatusAppBar> {
  int statusIndex = 0;
  bool showText = true;
  double containerWidth = 50.0;
  double textOpacity = 0.0;
  Alignment textAlignment = Alignment.centerLeft;
  late Timer _time;

  final List<Map<String, dynamic>> statuses = [
    {"text": "Camera is on", "icon": Icons.videocam},
    {"text": "Microphone is on", "icon": Icons.mic},
    {"text": "Screen is recording", "icon": Icons.screen_share},
    // {"text": "Location tracking is enabled", "icon": Icons.location_on},
    // {"text": "Speaker is being used", "icon": Icons.speaker},
  ];

  @override
  void initState() {
    super.initState();
    _startAnimation();

    // Initially set the correct container width
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        containerWidth =
            _calculateTextWidth(statuses[statusIndex]["text"]!) + 40.0;
      });
    });
  }

  void _startAnimation() {
    _time = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        textAlignment = Alignment.centerRight; // Slide text out
        textOpacity = 0.0; // Start fading out
      });

      Future.delayed(Duration(milliseconds: 600), () {
        setState(() {
          showText = !showText; // Switch between text and icon
          statusIndex = (statusIndex + 1) % statuses.length; // Change status
          containerWidth = showText
              ? _calculateTextWidth(statuses[statusIndex]["text"]!) + 40.0
              : 50.0; // Dynamically adjust width
        });

        Future.delayed(Duration(milliseconds: 300), () {
          setState(() {
            textAlignment = Alignment.centerLeft; // Slide text in
            textOpacity = 1.0; // Fade in
          });
        });
      });
    });

    // Ensure text appears smoothly at the beginning
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        textOpacity = 1.0;
      });
    });
  }

  double _calculateTextWidth(String text) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: TextStyle(fontSize: 16.0)),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.width + 20.0; // Extra padding for readability
  }

  @override
  void dispose() {
    _time.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.redAccent,
      title: AnimatedContainer(
        duration: Duration(milliseconds: 600),
        curve: Curves.easeInOut,
        width: containerWidth,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            // Icon that appears when text is hidden
            Align(
              alignment: Alignment.center,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: showText ? 0.0 : 1.0,
                child: Icon(
                  statuses[statusIndex]["icon"],
                  color: Colors.redAccent,
                  size: 24,
                ),
              ),
            ),
            // Sliding and Fading Text
            AnimatedAlign(
              duration: Duration(milliseconds: 600),
              alignment: textAlignment,
              curve: Curves.easeInOut,
              child: AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                opacity: showText ? textOpacity : 0.0,
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15), // Extra padding
                  child: Text(
                    statuses[statusIndex]["text"]!,
                    style: TextStyle(color: Colors.redAccent, fontSize: 16.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
