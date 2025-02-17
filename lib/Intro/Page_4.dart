// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:page_transition/page_transition.dart';

// import '../OTP/otp_1.dart';
// import 'Page_5.dart';

// class Page4 extends StatefulWidget {
//   const Page4({super.key});

//   @override
//   State<Page4> createState() => _Page4State();
// }

// class _Page4State extends State<Page4> {
//   // void initState() {
//   //   // TODO: implement initState
//   //   super.initState();
//   //   Future.delayed(Duration(milliseconds: 500),(){
//   //     Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop,
//   //
//   //         child: LoginSelectionScreen(),
//   //         duration: Duration(milliseconds: 300)),
//   //
//   //
//   //     );
//   //   });
//   // }
//   @override
//   Widget build(BuildContext context) {
//     // Retrieve screen size
//     final size = MediaQuery.of(context).size;
//     final double screenWidth = size.width;
//     final double screenHeight = size.height;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFFFFFFFF),
//         body: SafeArea(
//           child: Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(left: 50),
//                 child: Container(
//                   height: screenHeight * 0.45,
//                   width: screenWidth * 0.72,
//                   decoration: BoxDecoration(
//                     color: Color(0xFFF4FAFF),
//                     // border: Border.all(
//                     //   style: BorderStyle.solid,
//                     // ),
//                     borderRadius: BorderRadius.only(
//                       bottomRight: Radius.circular(screenWidth * 0.5),
//                       bottomLeft: Radius.circular(screenWidth * 0.5),
//                     ),
//                   ),
//                 ),
//               ),
//               // Padding(
//               //   padding: EdgeInsets.only(left: 0),
//               //   child: Container(
//               //     height: screenHeight * 0.48,
//               //     width: screenWidth * 0.72,
//               //     decoration: BoxDecoration(
//               //       color: Color(0xFFF4FAFF),
//               //       // border: Border.all(
//               //       //   style: BorderStyle.solid,
//               //       // ),
//               //       borderRadius: BorderRadius.only(
//               //         bottomRight: Radius.circular(screenWidth * 0.5),
//               //         bottomLeft: Radius.circular(screenWidth * 0.5),
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               // Container(
//               //     // decoration:
//               //     // BoxDecoration(border: Border.all(style: BorderStyle.solid)),
//               //     height: 350,
//               //     width: 400,
//               //     child: Image.asset(
//               //       "assets/Rectangle.png",
//               //       fit: BoxFit.fill,
//               //     )),
//               // Padding(
//               //   padding: const EdgeInsets.all(80.0),
//               //   child: TextButton(
//               //     onPressed: () {
//               //       Navigator.push(
//               //           context,
//               //           MaterialPageRoute(
//               //               builder: (context) => LoginSelectionScreen()));
//               //       // Handle Skip button press
//               //     },
//               //     child: Text(
//               //       "Skip",
//               //       style: TextStyle(
//               //         color: const Color(0xFFEEEEEE),
//               //         fontSize: screenWidth * 0.040, // Responsive font size
//               //         //fontWeight: FontWeight.bold,
//               //       ),
//               //     ),
//               //   ),
//               // ),
//               // TextButton(
//               //     onPressed: () {
//               //       Navigator.push(
//               //           context,
//               //           MaterialPageRoute(
//               //               builder: (context) => LoginSelectionScreen()));
//               //     },
//               //     child: Text(
//               //       "Skip",
//               //       style: TextStyle(
//               //         color: const Color(0xFFEEEEEE),
//               //         fontSize: screenWidth * 0.040, // Responsive font size
//               //         //fontWeight: FontWeight.bold,
//               //       ),
//               //     )),

//               // Skip Button
//               Padding(
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
//                       color: const Color(0xFF333333),
//                       fontSize: screenWidth * 0.040, // Responsive font size
//                       //fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),

//               // Main Content
//               Column(
//                 // mainAxisAlignment: MainAxisAlignment.center,
//                 //crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   // Illustration Image
//                   Padding(
//                     padding: EdgeInsets.only(top: screenHeight * 0.1),
//                     child: Container(
//                       height: screenHeight * 0.4,
//                       width: screenWidth * 0.8,
//                       // decoration: BoxDecoration(border: Border.all()),
//                       child: Image.asset(
//                         'assets/3.png',
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),

//                   // Description Indicators
//                   Padding(
//                     padding:
//                         EdgeInsets.symmetric(vertical: screenHeight * 0.02),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: screenHeight * 0.005,
//                           width: screenWidth * 0.1,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffF4FAFF),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                         SizedBox(width: screenWidth * 0.02),
//                         Container(
//                           height: screenHeight * 0.005,
//                           width: screenWidth * 0.1,
//                           decoration: BoxDecoration(
//                             color: const Color(0xffF4FAFF),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                         SizedBox(width: screenWidth * 0.02),
//                         Container(
//                           height: screenHeight * 0.005,
//                           width: screenWidth * 0.1,
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF3C97D3),
//                             borderRadius: BorderRadius.circular(30),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),

//                   // Description Text
//                   // Padding(
//                   //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
//                   //   child: Text(
//                   //     "Register, take mock tests, and\nreview scorecards—all in one\napp!",
//                   //     // textAlign: TextAlign.center,
//                   //     style: TextStyle(
//                   //       fontSize: screenWidth * 0.05,
//                   //       fontWeight: FontWeight.w400,
//                   //       color: Colors.black87,
//                   //     ),
//                   //   ),
//                   // ),
//                   SizedBox(height: screenHeight * 0.02),

//                   Row(
//                     children: [
//                       Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
//                         child: Text(
//                             "Register, take mock tests, and\nreview scorecards—all in one\napp!",
//                             //textAlign: TextAlign.center,
//                             style: GoogleFonts.poppins(
//                               textStyle: TextStyle(
//                                 height: 2.0,
//                                 fontSize:
//                                     screenWidth * 0.045, // Responsive font size
//                                 fontWeight: FontWeight.w400,
//                                 color: Color(0xFF333333),
//                               ),
//                             )),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.08,
//                   ),
//                   //  Spacer(),

//                   // Next Button
//                   // Padding(
//                   //   padding: EdgeInsets.only(
//                   //       bottom: screenHeight * 0.03, top: screenHeight * 0.02),
//                   //   child: ElevatedButton(
//                   //     style: ElevatedButton.styleFrom(
//                   //       padding: EdgeInsets.symmetric(
//                   //           horizontal: screenWidth * 0.37,
//                   //           vertical: screenHeight * 0.02),
//                   //       backgroundColor: const Color(0xFF3C97D3), // Button color
//                   //       shape: RoundedRectangleBorder(
//                   //         borderRadius: BorderRadius.circular(8),
//                   //       ),
//                   //     ),
//                   //     onPressed: () {
//                   //       // Navigator.push(
//                   //       //     context,
//                   //       //     MaterialPageRoute(
//                   //       //         builder: (context) {LoginSelectionScreen();
//                   //       //         Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop,
//                   //       //
//                   //       //             child: LoginSelectionScreen(),
//                   //       //             duration: Duration(milliseconds: 300)),
//                   //       //
//                   //       //
//                   //       //         );
//                   //       //         }));
//                   //       Navigator.push(
//                   //         context,
//                   //         PageTransition(
//                   //             type: PageTransitionType.bottomToTop,
//                   //             child: LoginSelectionScreen(),
//                   //             duration: const Duration(milliseconds: 300)),
//                   //       );
//                   //     },
//                   //     child: Text(
//                   //       "Let's go",
//                   //       style: TextStyle(
//                   //           fontSize: screenWidth * 0.06,
//                   //           fontWeight: FontWeight.bold,
//                   //           color: Colors.white),
//                   //     ),
//                   //   ),
//                   // ),

//                   // // Terms Text
//                   // Padding(
//                   //   padding: EdgeInsets.only(bottom: screenHeight * 0.05),
//                   //   child: Text.rich(
//                   //     TextSpan(
//                   //       text: "By registering, you agree to ",
//                   //       style: TextStyle(
//                   //           color: Colors.black54,
//                   //           fontSize: screenWidth * 0.035,
//                   //           fontWeight: FontWeight.bold),
//                   //       children: const [
//                   //         TextSpan(
//                   //           text: "our terms.",
//                   //           style: TextStyle(
//                   //             color: Color(0xFF3C97D3),
//                   //           ),
//                   //           // Add navigation to terms here
//                   //         ),
//                   //       ],
//                   //     ),
//                   //     textAlign: TextAlign.center,
//                   //   ),
//                   // ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Padding(
//                       padding: EdgeInsets.only(bottom: screenHeight * 0.05),
//                       child: SizedBox(
//                         height: screenHeight * 0.08,
//                         width: screenWidth * 0.9,
//                         child: ElevatedButton(
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor:
//                                 const Color(0xFF3C97D3), // Button color
//                             shape: RoundedRectangleBorder(
//                               borderRadius:
//                                   BorderRadius.circular(screenWidth * 0.02),
//                             ),
//                           ),
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               PageTransition(
//                                   type: PageTransitionType.bottomToTop,
//                                   child: OTPVerificationScreen(),
//                                   duration: Duration(milliseconds: 300)),
//                             );
//                           },
//                           child: Text(
//                             "Let's go",
//                             style: TextStyle(
//                               fontSize:
//                                   screenWidth * 0.05, // Responsive font size
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),

//                   // Terms Text
//                   Padding(
//                     padding: EdgeInsets.only(bottom: screenHeight * 0.0),
//                     child: Text.rich(
//                       TextSpan(
//                         text: "By registering, you agree to ",
//                         style: TextStyle(
//                           color: Color(0xFF222222),
//                           fontSize: screenWidth * 0.035, // Responsive font size
//                           // fontWeight: FontWeight.bold,
//                         ),
//                         children: [
//                           TextSpan(
//                             text: "our terms.",
//                             style: TextStyle(
//                               color: Color(0xFF3C97D3),
//                             ),
//                           ),
//                         ],
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.020,
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//==============================================================================
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import '../OTP/otp_1.dart';
import 'Page_5.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions and orientation
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    // Calculate responsive values
    final double topCurveHeight = screenHeight * 0.45;
    final double topCurveWidth = screenWidth * 0.72;
    final double buttonHeight = screenHeight * 0.08;
    final double horizontalPadding = screenWidth * 0.02;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              children: [
                // Top curved container
                Positioned(
                  left: screenWidth * 0.125,
                  child: Container(
                    height: topCurveHeight,
                    width: topCurveWidth,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF4FAFF),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(screenWidth * 0.5),
                        bottomLeft: Radius.circular(screenWidth * 0.5),
                      ),
                    ),
                  ),
                ),

                // Skip Button
                Positioned(
                  top: screenHeight * 0.05,
                  right: screenWidth * 0.05,
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
                          color: const Color(0xFF333333),
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    ),
                  ),
                ),

                // Main Content
                SingleChildScrollView(
                  child: Column(
                    children: [
                      // Illustration Image
                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.1),
                        height: screenHeight * 0.4,
                        width: screenWidth * 0.8,
                        child: Image.asset(
                          'assets/3.png',
                          fit: BoxFit.contain,
                        ),
                      ),

                      // Progress Indicators
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.02,
                          horizontal: horizontalPadding,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildProgressDot(screenHeight, screenWidth, false),
                            SizedBox(width: screenWidth * 0.02),
                            _buildProgressDot(screenHeight, screenWidth, false),
                            SizedBox(width: screenWidth * 0.02),
                            _buildProgressDot(screenHeight, screenWidth, true),
                          ],
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.02),

                      // Description Text
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: horizontalPadding),
                        child: Text(
                          "Register, take mock tests, and\nreview scorecards—all in one\napp!",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              height: 2.0,
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF333333),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.08),

                      // Next Button
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: horizontalPadding,
                          vertical: screenHeight * 0.02,
                        ),
                        child: Container(
                          height: buttonHeight,
                          width: screenWidth * 0.9,
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
                                borderRadius:
                                    BorderRadius.circular(screenWidth * 0.02),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                PageTransition(
                                  type: PageTransitionType.bottomToTop,
                                  child: OTPVerificationScreen(),
                                  duration: const Duration(milliseconds: 300),
                                ),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Let's go",
                                style: TextStyle(
                                  fontSize: screenWidth * 0.05,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                      // Terms Text
                      Padding(
                        padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text.rich(
                            TextSpan(
                              text: "By registering, you agree to ",
                              style: TextStyle(
                                color: const Color(0xFF222222),
                                fontSize: screenWidth * 0.035,
                              ),
                              children: const [
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
            );
          },
        ),
      ),
    );
  }

  Widget _buildProgressDot(
      double screenHeight, double screenWidth, bool isActive) {
    return Container(
      height: screenHeight * 0.005,
      width: screenWidth * 0.1,
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF3C97D3) : const Color(0xffF4FAFF),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
