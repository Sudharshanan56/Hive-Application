// // import 'package:flutter/material.dart';
// // import 'package:percent_indicator/circular_percent_indicator.dart';
// // import 'package:percent_indicator/linear_percent_indicator.dart';

// // void main() {
// //   runApp(const MaterialApp(home: EligibilityInsights()));
// // }

// // class EligibilityInsights extends StatelessWidget {
// //   const EligibilityInsights({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.grey[200],
// //       body: Center(
// //         child: Card(
// //           child: Container(
// //             padding: const EdgeInsets.all(16),
// //             height: 900,
// //             width: 350,
// //             decoration: BoxDecoration(
// //               color: Color(0xFFFFFFFF),
// //               borderRadius: BorderRadius.circular(15),
// //               boxShadow: [
// //                 BoxShadow(
// //                   color: Colors.black.withOpacity(0.1),
// //                   blurRadius: 8,
// //                   spreadRadius: 2,
// //                 ),
// //               ],
// //             ),
// //             child: Column(
// //               crossAxisAlignment: CrossAxisAlignment.start,
// //               children: [
// //                 const Text(
// //                   "Eligibility insights",
// //                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                 ),
// //                 SizedBox(height: 8),
// //                 Row(
// //                   children: [
// //                     Text(
// //                       "97",
// //                       style:
// //                           TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
// //                     ),
// //                     Text(
// //                       "/100",
// //                       style: TextStyle(fontSize: 20, color: Colors.grey),
// //                     ),
// //                     const Spacer(),
// //                     ElevatedButton(
// //                       onPressed: () {},
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: Color(0xFF5A9ECF),
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(8),
// //                         ),
// //                       ),
// //                       child: Text(
// //                         "Check",
// //                         style: TextStyle(color: Colors.white),
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //                  SizedBox(height: 8),
// //                 LinearPercentIndicator(
// //                   lineHeight: 8.0,
// //                   percent: 97 / 100,
// //                   backgroundColor: Colors.grey[300]!,
// //                   progressColor: Color(0xFF5A9ECF),
// //                   barRadius: const Radius.circular(10),
// //                 ),
// //                  SizedBox(height: 16),
// //                 // Row(
// //                 //   children: [
// //                 //     _buildCircularIndicator(
// //                 //         79,
// //                 //         Color(0xFF5A9ECF))]),
// //                 //         Row(children:["Average score",
// //                 //         "Average score is total scores by tests."]),
// //                 Row(
// //   children: [
// //     Column(
// //       children: [
// //         _buildCircularIndicator(
// //           79, // Value
// //           const Color(0xFF5A9ECF), // Color
// //           "Average score", // Title
// //           "Average score is total scores by tests.", // Subtitle
// //         ),
// //       ],
// //     ),
// //   ],
// // ),

// //                   ],
// //                 ),
// //                 //  SizedBox(width: 16),
// //                 Row(
// //                   children: [
// //                     _buildCircularIndicator(17, Color(0xFF4CC600), "Test Taken",
// //                         "Tests taken this month."),
// //                   ],
// //                 ),
// //               ,
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   Widget _buildCircularIndicator(
// //       int value, Color color, String title, String subtitle) {
// //     return Expanded(
// //       child: Column(
// //         children: [
// //           CircularPercentIndicator(
// //             radius: 35.0,
// //             lineWidth: 8.0,
// //             percent: value / 100,
// //             center: Text(
// //               "$value",
// //               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //             ),
// //             progressColor: color,
// //             backgroundColor: Colors.grey[200]!,
// //             circularStrokeCap: CircularStrokeCap.round,
// //           ),
// //           const SizedBox(height: 8),
// //           Text(
// //             title,
// //             style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// //           ),
// //           const SizedBox(height: 4),
// //           Text(
// //             subtitle,
// //             textAlign: TextAlign.center,
// //             style: const TextStyle(fontSize: 12, color: Colors.grey),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

// void main() {
//   runApp(const MaterialApp(home: EligibilityInsights()));
// }

// class EligibilityInsights extends StatelessWidget {
//   const EligibilityInsights({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: Center(
//         child: Card(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             height: 900, // Adjusted height to fit content
//             width: 350,
//             decoration: BoxDecoration(
//               color: const Color(0xFFFFFFFF),
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 8,
//                   spreadRadius: 2,
//                 ),
//               ],
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   "Eligibility insights",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 8),
//                 Row(
//                   children: [
//                     const Text(
//                       "97",
//                       style:
//                           TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                     ),
//                     const Text(
//                       "/100",
//                       style: TextStyle(fontSize: 20, color: Colors.grey),
//                     ),
//                     const Spacer(),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF5A9ECF),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: const Text(
//                         "Check",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 LinearPercentIndicator(
//                   lineHeight: 8.0,
//                   percent: 97 / 100,
//                   backgroundColor: Colors.grey[300]!,
//                   progressColor: const Color(0xFF5A9ECF),
//                   barRadius: const Radius.circular(10),
//                 ),
//                 const SizedBox(height: 16),
// //==================================================================================
//                 /// Circular Indicators
//                 Container(
//                   decoration: BoxDecoration(border: Border.all()),
//                   child: Column(
//                     children: [
//                       Row(
//                           // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             _buildCircularIndicator(
//                               79,
//                               Color(0xFF5A9ECF),
//                               "xsafre",
//                               "",
//                             ),
//                             Positioned(
//                               child: Container(
//                                 height: 100,
//                                 width: 200,
//                                 decoration: BoxDecoration(border: Border.all()),
//                                 child: Column(
//                                   children: [
//                                     Stack(
//                                       children: [
//                                         Text("Average Score"),
//                                       ],
//                                     ),
//                                     Text(
//                                         "Average score is total scores by tests.")
//                                   ],
//                                 ),
//                               ),
//                               left: 40,
//                             )
//                           ]),
//                       Row(
//                         //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           _buildCircularIndicator(
//                             17,
//                             Color(0xFF4CC600),
//                             "Test Taken",
//                             "Tests taken this month.",
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   /// Function to build Circular Indicator
//   Widget _buildCircularIndicator(
//       int value, Color color, String title, String subtitle) {
//     return Column(
//       children: [
//         CircularPercentIndicator(
//           radius: 35.0,
//           lineWidth: 8.0,
//           percent: value / 100,
//           center: Text(
//             "$value",
//             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           progressColor: color,
//           backgroundColor: Colors.grey[200]!,
//           circularStrokeCap: CircularStrokeCap.round,
//         ),
//         const SizedBox(height: 8),
//         Text(
//           title,
//           style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 4),
//         Text(
//           subtitle,
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 12, color: Colors.grey),
//         ),
//       ],
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';
// import 'package:percent_indicator/linear_percent_indicator.dart';

// void main() {
//   runApp(const MaterialApp(home: EligibilityInsights()));
// }

// class EligibilityInsights extends StatelessWidget {
//   const EligibilityInsights({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: Center(
//         child: Card(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             width: 350,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(15),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 8,
//                   spreadRadius: 2,
//                 ),
//               ],
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text(
//                   "Eligibility insights",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 8),
//                 Row(
//                   children: [
//                     const Text(
//                       "97",
//                       style:
//                           TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                     ),
//                     const Text(
//                       "/100",
//                       style: TextStyle(fontSize: 20, color: Colors.grey),
//                     ),
//                     const Spacer(),
//                     ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF5A9ECF),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: const Text(
//                         "Check",
//                         style: TextStyle(color: Colors.white),
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 8),
//                 LinearPercentIndicator(
//                   lineHeight: 8.0,
//                   percent: 0.97,
//                   backgroundColor: Colors.grey[300]!,
//                   progressColor: const Color(0xFF5A9ECF),
//                   barRadius: const Radius.circular(10),
//                   padding: EdgeInsets.zero,
//                 ),
//                 const SizedBox(height: 24),
//                 // Circular indicators section
//                 Column(
//                   children: [
//                     _buildIndicatorRow(
//                       value: 75,
//                       color: const Color(0xFF5A9ECF),
//                       title: "Average score",
//                       subtitle: "Average score is total scores by tests.",
//                     ),
//                     const SizedBox(height: 16),
//                     _buildIndicatorRow(
//                       value: 17,
//                       color: const Color(0xFF4CC600),
//                       title: "Test Taken",
//                       subtitle: "Tests taken this month.",
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildIndicatorRow({
//     required int value,
//     required Color color,
//     required String title,
//     required String subtitle,
//   }) {
//     return Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         CircularPercentIndicator(
//           radius: 35.0,
//           lineWidth: 8.0,
//           percent: value / 100,
//           center: Text(
//             "$value",
//             style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//           ),
//           progressColor: color,
//           backgroundColor: Colors.grey[200]!,
//           circularStrokeCap: CircularStrokeCap.round,
//         ),
//         const SizedBox(width: 16),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 title,
//                 style: const TextStyle(
//                   fontSize: 14,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 subtitle,
//                 style: const TextStyle(
//                   fontSize: 12,
//                   color: Colors.grey,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

void main() {
  runApp(const MaterialApp(home: EligibilityInsights()));
}

class EligibilityInsights extends StatelessWidget {
  const EligibilityInsights({super.key});

  @override
  Widget build(BuildContext context) {
    // Get screen size
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;

    // Calculate responsive values
    final cardWidth = screenWidth * 0.9; // 90% of screen width
    final maxCardWidth = 450.0; // Maximum card width
    final minCardWidth = 300.0; // Minimum card width

    // Calculate font sizes based on screen width
    final titleFontSize = screenWidth * 0.045; // 4.5% of screen width
    final scoreFontSize = screenWidth * 0.07; // 7% of screen width
    final denominatorFontSize = screenWidth * 0.05; // 5% of screen width

    // Constrain font sizes
    final constrainedTitleSize = titleFontSize.clamp(16.0, 24.0);
    final constrainedScoreSize = scoreFontSize.clamp(24.0, 36.0);
    final constrainedDenomSize = denominatorFontSize.clamp(18.0, 24.0);

    // Calculate indicator sizes
    final circularIndicatorRadius = (screenWidth * 0.09).clamp(30.0, 45.0);
    final lineIndicatorHeight = (screenWidth * 0.02).clamp(6.0, 10.0);

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Card(
            child: Container(
              padding: EdgeInsets.all((screenWidth * 0.04).clamp(12.0, 24.0)),
              width: cardWidth.clamp(minCardWidth, maxCardWidth),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Eligibility insights",
                    style: TextStyle(
                      fontSize: constrainedTitleSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  Row(
                    children: [
                      Text(
                        "97",
                        style: TextStyle(
                          fontSize: constrainedScoreSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "/100",
                        style: TextStyle(
                          fontSize: constrainedDenomSize,
                          color: Colors.grey,
                        ),
                      ),
                      const Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5A9ECF),
                          padding: EdgeInsets.symmetric(
                            horizontal: (screenWidth * 0.03).clamp(12.0, 20.0),
                            vertical: (screenHeight * 0.01).clamp(8.0, 16.0),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Check",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: (screenWidth * 0.035).clamp(14.0, 18.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.01),
                  LinearPercentIndicator(
                    lineHeight: lineIndicatorHeight,
                    percent: 0.97,
                    backgroundColor: Colors.grey[300]!,
                    progressColor: const Color(0xFF5A9ECF),
                    barRadius: const Radius.circular(10),
                    padding: EdgeInsets.zero,
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Column(
                    children: [
                      _buildIndicatorRow(
                        context: context,
                        value: 75,
                        color: const Color(0xFF5A9ECF),
                        title: "Average score",
                        subtitle: "Average score is total scores by tests.",
                        radius: circularIndicatorRadius,
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      _buildIndicatorRow(
                        context: context,
                        value: 17,
                        color: const Color(0xFF4CC600),
                        title: "Test Taken",
                        subtitle: "Tests taken this month.",
                        radius: circularIndicatorRadius,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIndicatorRow({
    required BuildContext context,
    required int value,
    required Color color,
    required String title,
    required String subtitle,
    required double radius,
  }) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircularPercentIndicator(
          radius: radius,
          lineWidth: (screenWidth * 0.02).clamp(6.0, 10.0),
          percent: value / 100,
          center: Text(
            "$value",
            style: TextStyle(
              fontSize: (screenWidth * 0.045).clamp(16.0, 24.0),
              fontWeight: FontWeight.bold,
            ),
          ),
          progressColor: color,
          backgroundColor: Colors.grey[200]!,
          circularStrokeCap: CircularStrokeCap.round,
        ),
        SizedBox(width: screenWidth * 0.04),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: (screenWidth * 0.035).clamp(13.0, 18.0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: (screenWidth * 0.03).clamp(11.0, 16.0),
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
