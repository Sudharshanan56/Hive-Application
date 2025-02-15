// import 'package:flutter/material.dart';
// import 'package:hive_application/Intro/Page_2.dart';

// import 'Page_5.dart';

// class Page1 extends StatelessWidget {
//   const Page1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     double screenWidth = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             // Background Image
//             Positioned.fill(
//               child: Image.asset(
//                 'assets/main.png', // Ensure the path matches your pubspec.yaml
//                 fit: BoxFit.fill,
//               ),
//             ),

//             // Skip Button
//             SafeArea(
//               child: Padding(
//                 padding: EdgeInsets.only(
//                     left: screenWidth * 0.8, top: screenHeight * 0.05),
//                 child: TextButton(
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => LoginSelectionScreen()));
//                     // Handle Skip button press
//                   },
//                   child: Text(
//                     "Skip",
//                     style: TextStyle(
//                       color: const Color(0xFFEEEEEE),
//                       fontSize: screenWidth * 0.040, // Responsive font size
//                       //fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),

//             // Get Started Button
//             // Align(
//             //   alignment: Alignment.bottomCenter,
//             //   child: Padding(
//             //     padding: EdgeInsets.only(bottom: screenHeight * 0.1),
//             //     child: SizedBox(
//             //       height: screenHeight * 0.07,
//             //       width: screenWidth * 0.9,
//             //       child: ElevatedButton(
//             //         style: ElevatedButton.styleFrom(
//             //           backgroundColor: const Color(0xFF3C97D3), // Button color
//             //           shape: RoundedRectangleBorder(
//             //             borderRadius: BorderRadius.circular(screenWidth * 0.02),
//             //           ),
//             //         ),
//             //         onPressed: () {
//             //           Navigator.push(
//             //             context,
//             //             MaterialPageRoute(builder: (context) => const Page2()),
//             //           );
//             //         },
//             //         child: Center(
//             //           child: Text(
//             //             "Get Started",
//             //             style: TextStyle(
//             //               fontSize: screenWidth * 0.040, // Responsive font size
//             //               fontWeight: FontWeight.bold,
//             //               color: Colors.white,
//             //             ),
//             //           ),
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),

//             // // Terms Text
//             // Align(
//             //   alignment: Alignment.bottomCenter,
//             //   child: Padding(
//             //     padding: EdgeInsets.only(bottom: screenHeight * 0.03),
//             //     child: Text.rich(
//             //       TextSpan(
//             //         text: "By registering, you agree to ",
//             //         style: TextStyle(
//             //           color: Colors.white,
//             //           fontSize: screenWidth * 0.035, // Responsive font size
//             //         ),
//             //         children: const [
//             //           TextSpan(
//             //             text: "our terms.",
//             //             style: TextStyle(
//             //               color: Color(0xFF3C97D3),
//             //               // decoration: TextDecoration.underline,
//             //             ),
//             //             // Add navigation to terms here
//             //           ),
//             //         ],
//             //       ),
//             //       textAlign: TextAlign.center,
//             //     ),
//             //   ),
//             // ),
//             Padding(
//               padding: EdgeInsets.only(
//                   top: screenHeight * 0.8,
//                   left: screenWidth * 0.05,
//                   right: screenWidth * 0.05),
//               child: Container(
//                 height: screenHeight * 0.08,
//                 width: screenWidth * 0.9,
//                 decoration: BoxDecoration(
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.3),
//                       spreadRadius: 0,
//                       blurRadius: 4,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF3C97D3), // Button color
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(screenWidth * 0.02),
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const Page2()),
//                     );
//                   },
//                   child: Text(
//                     "Get started",
//                     style: TextStyle(
//                       fontSize: screenWidth * 0.045, // Responsive font size
//                       // fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: screenHeight * 0.020,
//             ),

//             // Terms Text
//             Align(
//               alignment: Alignment.bottomCenter,
//               child: Padding(
//                 padding: EdgeInsets.only(bottom: screenHeight * 0.03),
//                 child: Text.rich(
//                   TextSpan(
//                     text: "By registering, you agree to ",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: screenWidth * 0.035, // Responsive font size
//                       // fontWeight: FontWeight.bold,
//                     ),
//                     children: const [
//                       TextSpan(
//                         text: "our terms.",
//                         style: TextStyle(
//                           color: Color(0xFF3C97D3),
//                         ),
//                       ),
//                     ],
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: screenHeight * 0.020,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:hive_application/Intro/Page_2.dart';
import 'Page_5.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final Size screenSize = MediaQuery.of(context).size;
    final double screenHeight = screenSize.height;
    final double screenWidth = screenSize.width;

    // Calculate responsive values
    final double buttonHeight = screenHeight * 0.08;
    final double horizontalPadding = screenWidth * 0.05;
    final double verticalPadding = screenHeight * 0.03;

    return LayoutBuilder(
      builder: (context, constraints) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              children: [
                // Background Image with ResponsiveBox
                SizedBox.expand(
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Image.asset(
                      'assets/main.png',
                    ),
                  ),
                ),

                // Skip Button
                Positioned(
                  top: screenHeight * 0.05,
                  right: horizontalPadding,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginSelectionScreen(),
                        ),
                      );
                    },
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: const Color(0xFFEEEEEE),
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                ),

                // Get Started Button and Terms Container
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                          vertical: verticalPadding,
                        ),
                        child: Container(
                          height: buttonHeight,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.3),
                                spreadRadius: 0,
                                blurRadius: 4,
                                offset: const Offset(0, 4),
                              ),
                            ],
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF3C97D3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                  screenWidth * 0.02,
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Page2(),
                                ),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Get started",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.045,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Terms Text
                      Padding(
                        padding: EdgeInsets.only(bottom: verticalPadding),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text.rich(
                            TextSpan(
                              text: "By registering, you agree to ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: screenWidth * 0.035,
                              ),
                              children:  [
                                TextSpan(
                                  text: "our terms.",
                                  style: TextStyle(
                                    color: Color(0xFF3C97D3),
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
