// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:hive_application/Intro/Page_4.dart';

// import 'Page_5.dart';

// class Page3 extends StatelessWidget {
//   const Page3({super.key});

//   @override
//   Widget build(BuildContext context) {
//     double screenHeight = MediaQuery.of(context).size.height;
//     double screenWidth = MediaQuery.of(context).size.width;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFFFFFFFF),
//         body: SafeArea(
//           child: Stack(
//             children: [
//               Padding(
//                 padding: EdgeInsets.only(left: 50),
//                 child: Container(
//                   height: screenHeight * 0.48,
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
//               // Container(
//               //     // decoration:
//               //     // BoxDecoration(border: Border.all(style: BorderStyle.solid)),
//               //     height: 350,
//               //     width: 400,
//               //     child: Image.asset(
//               //       "assets/Rectangle.png",
//               //       fit: BoxFit.fill,
//               //     )),
//               // Skip Button
//               SafeArea(
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                       left: screenWidth * 0.8, top: screenHeight * 0.05),
//                   child: TextButton(
//                     onPressed: () {
//                       Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => LoginSelectionScreen()));
//                       // Handle Skip button press
//                     },
//                     child: Text(
//                       "Skip",
//                       style: TextStyle(
//                         color: const Color(0xFF333333),
//                         fontSize: screenWidth * 0.040, // Responsive font size
//                         //fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),

//               // Main Content
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   // Illustration Image
//                   Padding(
//                     padding: EdgeInsets.only(top: screenHeight * 0.1),
//                     child: SizedBox(
//                       height: screenHeight * 0.37,
//                       width: screenWidth * 0.8,
//                       child: Image.asset(
//                         'assets/2.png',
//                         fit: BoxFit.contain,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.05,
//                   ),

//                   // Description Text
//                   Padding(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
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
//                             color: const Color(0xFF3C97D3),
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
//                       ],
//                     ),
//                   ),

//                   SizedBox(height: screenHeight * 0.05),
//                   // Padding(
//                   //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
//                   //   child:  Text(
//                   //     "Access curated articles and tips\n tailored for medical entrance\n preparation.",
//                   //     style: TextStyle(
//                   //       fontSize: screenWidth * 0.05,
//                   //       fontWeight: FontWeight.w400,
//                   //       color: Colors.black87,
//                   //     ),
//                   //     // textAlign: TextAlign.center,
//                   //   ),
//                   // ),
//                   Row(
//                     children: [
//                       Padding(
//                         padding:
//                             EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
//                         child: Text(
//                             "Access curated articles and tips\ntailored for medical entrance\npreparation.",
//                             //textAlign: TextAlign.center,
//                             style: GoogleFonts.poppins(
//                               height: 2.0,
//                               textStyle: TextStyle(
//                                 fontSize:
//                                     screenWidth * 0.045, // Responsive font size
//                                 fontWeight: FontWeight.w400,
//                                 color: Color(0xFF333333),
//                               ),
//                             )),
//                       ),
//                     ],
//                   ),

//                   Spacer(),

//                   // Next Button
//                   // Padding(
//                   //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1, vertical: screenHeight * 0.05),
//                   //   child: ElevatedButton(
//                   //     style: ElevatedButton.styleFrom(
//                   //       padding: EdgeInsets.symmetric(
//                   //         vertical: screenHeight * 0.02,
//                   //         horizontal: screenWidth * 0.2,
//                   //       ),
//                   //       backgroundColor: Colors.blue, // Button color
//                   //       shape: RoundedRectangleBorder(
//                   //         borderRadius: BorderRadius.circular(8),
//                   //       ),
//                   //     ),
//                   //     onPressed: () {
//                   //       Navigator.push(context, MaterialPageRoute(builder: (context) => Page4()));
//                   //     },
//                   //     child: const Text(
//                   //       "Next",
//                   //       style: TextStyle(
//                   //         fontSize: 20,
//                   //         fontWeight: FontWeight.bold,
//                   //         color: Colors.white,
//                   //       ),
//                   //     ),
//                   //   ),
//                   // ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Padding(
//                       padding: EdgeInsets.only(bottom: screenHeight * 0.05),
//                       child: Container(
//                         decoration: BoxDecoration(
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.black.withOpacity(0.3),
//                               spreadRadius: 0,
//                               blurRadius: 4,
//                               offset: Offset(0, 4),
//                             ),
//                           ],
//                         ),
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
//                               MaterialPageRoute(
//                                   builder: (context) => const Page4()),
//                             );
//                           },
//                           child: Text(
//                             "Next",
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
//                     padding: EdgeInsets.only(bottom: screenHeight * 0.03),
//                     child: Text.rich(
//                       TextSpan(
//                         text: "By registering, you agree to ",
//                         style: TextStyle(
//                           color: Color(0xFF222222),
//                           fontSize: screenWidth * 0.035, // Responsive font size
//                           // fontWeight: FontWeight.bold,
//                         ),
//                         children: const [
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

//==================================================
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_application/Intro/Page_4.dart';
import 'Page_5.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions and orientation
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;
    final isPortrait = mediaQuery.orientation == Orientation.portrait;

    // Calculate responsive values
    final double topCurveHeight = screenHeight * 0.48;
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Illustration Image
                      Container(
                        margin: EdgeInsets.only(top: screenHeight * 0.1),
                        height: screenHeight * 0.37,
                        width: screenWidth * 0.8,
                        child: Image.asset(
                          'assets/2.png',
                          fit: BoxFit.contain,
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.05),

                      // Progress Indicator
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: horizontalPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            _buildProgressDot(screenHeight, screenWidth, false),
                            SizedBox(width: screenWidth * 0.02),
                            _buildProgressDot(screenHeight, screenWidth, true),
                            SizedBox(width: screenWidth * 0.02),
                            _buildProgressDot(screenHeight, screenWidth, false),
                          ],
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.05),

                      // Description Text
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: horizontalPadding),
                        child: Text(
                          "Access curated articles and tips\ntailored for medical entrance\npreparation.",
                          style: GoogleFonts.poppins(
                            height: 2.0,
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xFF333333),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: screenHeight * 0.1),

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
                                MaterialPageRoute(
                                    builder: (context) => const Page4()),
                              );
                            },
                            child: FittedBox(
                              fit: BoxFit.scaleDown,
                              child: Text(
                                "Next",
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
