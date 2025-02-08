import 'package:flutter/material.dart';

import '../Score  Card/Score_Card.dart';
import '../University/Help & support.dart';
import '../University/Settings.dart';
import 'Profile Edit.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    // final size = MediaQuery.of(context).size;
    // final screenWidth = size.width;
    // final screenHeight = size.height;

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

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffFCFEFF),
        // appBar: AppBar(
        //   title: Text('Profile', style: TextStyle(color: Colors.black)),
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   centerTitle: false,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                // Profile Header
                const Text(
                  "Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: screenHeight * 0.05,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      radius: screenWidth * 0.08,
                      backgroundImage: const AssetImage(
                          'assets/profile.jpg'), // Replace with your image
                    ),
                    SizedBox(width: screenWidth * 0.05),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Rajasekar',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'NEET202454321',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: screenHeight * 0.045,
                      width: screenWidth * 0.23,
                      // decoration: BoxDecoration(border: Border.all()),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProfilePageEdit()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          backgroundColor: const Color(0xff5A9ECF),
                        ),
                        child: Text(
                          'Edit',
                          softWrap: false,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.045),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.04),

                // Average Score and Tests Taken
                // Row(
                //   children: [
                //     Container(
                //       height: screenheight * 0.10,
                //       width: screenwidth * 0.45,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //           Container(
                //             height: screenheight * 0.20,
                //             width: screenwidth * 0.20,
                //             child:
                //                 Column(
                //                   children: [
                //                     SizedBox(height: screenheight * 0.01,),
                //                     Text("Average",style: TextStyle(fontSize: screenwidth * 0.04,fontWeight: FontWeight.bold),),
                //                     Text("Score",style: TextStyle(fontSize: screenwidth * 0.06,fontWeight: FontWeight.bold),)
                //                   ],
                //                 ),
                //
                //
                //           ),
                //           Row(
                //             children: [
                //               Container(
                //                 height: screenheight * 0.25,
                //                 width: screenwidth * 0.25,
                //                // color: Color(0xff5A9ECF),
                //                 decoration: BoxDecoration(
                //                   color: const Color(0xff5A9ECF), // Light blue color
                //                   borderRadius: const BorderRadius.only(
                //                     topLeft: Radius.circular(60),
                //                     topRight: Radius.circular(10),
                //                     bottomLeft: Radius.circular(60),
                //                    bottomRight: Radius.circular(10),
                //                   ),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: Colors.black.withOpacity(0.1),
                //                       blurRadius: 10,
                //                       spreadRadius: 2,
                //                       offset: const Offset(0, 4),
                //                     ),
                //                   ],
                //                 ),
                //                 child: Center(child: Text("86",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)),
                //
                //               )
                //             ],
                //           ),
                //         ],
                //       ),
                //     ),
                //     SizedBox(width: 20,),
                //
                //     Container(
                //       height: screenheight * 0.10,
                //       width: screenwidth * 0.45,
                //       child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //         children: [
                //
                //           Row(
                //             children: [
                //               Container(
                //                 height: screenheight * 0.25,
                //                 width: screenwidth * 0.25,
                //                 // color: Color(0xff5A9ECF),
                //                 decoration: BoxDecoration(
                //                   color: const Color(0xff5A9ECF), // Light blue color
                //                   borderRadius: const BorderRadius.only(
                //                     topLeft: Radius.circular(10),
                //                     topRight: Radius.circular(60),
                //                     bottomLeft: Radius.circular(10),
                //                     bottomRight: Radius.circular(60),
                //                   ),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: Colors.black.withOpacity(0.1),
                //                       blurRadius: 10,
                //                       spreadRadius: 2,
                //                       offset: const Offset(0, 4),
                //                     ),
                //                   ],
                //                 ),
                //                 child: Center(child: Text("16",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 35),)),
                //
                //               )
                //             ],
                //           ),
                //           Container(
                //             height: 100,
                //             width: 80,
                //             child:
                //             Column(
                //               children: [
                //                 SizedBox(height: 25,),
                //                 Text("Tests",style: TextStyle(fontSize: screenwidth * 0.05,fontWeight: FontWeight.bold),),
                //                 Text("Taken",style: TextStyle(fontSize: screenwidth * 0.06,fontWeight: FontWeight.bold),)
                //               ],
                //             ),
                //
                //
                //           ),
                //         ],
                //       ),
                //     ),
                //   ],
                // ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     // First Container
                //     Flexible(
                //       child: SizedBox(
                //         height: screenheight * 0.15,
                //         width: screenwidth * 0.45,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             // Text Section
                //             SizedBox(
                //               height: screenheight * 0.15,
                //               width: screenwidth * 0.2,
                //               child: Column(
                //                 mainAxisAlignment: MainAxisAlignment.center,
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: [
                //                   Text(
                //                     "Average",
                //                     style: TextStyle(
                //                       fontSize: screenwidth * 0.04,
                //                       fontWeight: FontWeight.bold,
                //                       fontFamily: "Poppins",
                //                     ),
                //                   ),
                //                   SizedBox(height: screenheight * 0.005),
                //                   Text(
                //                     "Score",
                //                     style: TextStyle(
                //                       fontSize: screenwidth * 0.06,
                //                       fontWeight: FontWeight.bold,
                //                       fontFamily: "Poppins",
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ),
                //             // Value Section
                //             Flexible(
                //               child: Container(
                //                 height: screenheight * 0.12,
                //                 width: screenwidth * 0.2,
                //                 decoration: BoxDecoration(
                //                   color: Color(0xff5A9ECF),
                //                   borderRadius: const BorderRadius.only(
                //                     topLeft: Radius.circular(60),
                //                     topRight: Radius.circular(10),
                //                     bottomLeft: Radius.circular(60),
                //                     bottomRight: Radius.circular(10),
                //                   ),
                //                   boxShadow: [
                //                     BoxShadow(
                //                       color: Colors.black.withOpacity(0.1),
                //                       blurRadius: 10,
                //                       spreadRadius: 2,
                //                       offset: const Offset(0, 4),
                //                     ),
                //                   ],
                //                 ),
                //                 child: Center(
                //                   child: Text(
                //                     "86",
                //                     style: TextStyle(
                //                       color: Colors.white,
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: screenwidth * 0.08,
                //                     ),
                //                   ),
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //     SizedBox(width: screenwidth * 0.03),
                //     // Second Container
                //     Flexible(
                //       child: SizedBox(
                //         height: screenheight * 0.15,
                //         width: screenwidth * 0.45,
                //         child: Row(
                //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //           children: [
                //             // Value Section
                //             Container(
                //               height: screenheight * 0.12,
                //               width: screenwidth * 0.2,
                //               decoration: BoxDecoration(
                //                 color: const Color(0xff5A9ECF),
                //                 borderRadius: const BorderRadius.only(
                //                   topLeft: Radius.circular(10),
                //                   topRight: Radius.circular(60),
                //                   bottomLeft: Radius.circular(10),
                //                   bottomRight: Radius.circular(60),
                //                 ),
                //                 boxShadow: [
                //                   BoxShadow(
                //                     color: Colors.black.withOpacity(0.1),
                //                     blurRadius: 10,
                //                     spreadRadius: 2,
                //                     offset: const Offset(0, 4),
                //                   ),
                //                 ],
                //               ),
                //               child: Center(
                //                 child: Text(
                //                   "16",
                //                   style: TextStyle(
                //                     color: Colors.white,
                //                     fontWeight: FontWeight.bold,
                //                     fontSize: screenwidth * 0.08,
                //                     fontFamily: "Poppins",
                //                   ),
                //                 ),
                //               ),
                //             ),
                //             // Text Section
                //             Flexible(
                //               child: SizedBox(
                //                 height: screenheight * 0.15,
                //                 width: screenwidth * 0.2,
                //                 child: Column(
                //                   mainAxisAlignment: MainAxisAlignment.center,
                //                   crossAxisAlignment: CrossAxisAlignment.end,
                //                   children: [
                //                     Text(
                //                       "Tests",
                //                       style: TextStyle(
                //                         fontSize: screenwidth * 0.05,
                //                         fontWeight: FontWeight.bold,
                //                         fontFamily: "Poppins",
                //                       ),
                //                     ),
                //                     SizedBox(height: screenheight * 0.005),
                //                     Text(
                //                       "Taken",
                //                       style: TextStyle(
                //                         fontSize: screenwidth * 0.06,
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ],
                // ),

                // SizedBox(height: 24),

                // Eligibility Section
                // Container(
                //   height: 200,
                //   width: 400,
                //   padding: EdgeInsets.all(16),
                //   decoration: BoxDecoration(
                //     color: Colors.blue[50],
                //     borderRadius: BorderRadius.circular(12),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: [
                //       Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           Text(
                //             'Eligibility',
                //             style: TextStyle(
                //               fontSize: 16,
                //               color: Colors.grey[600],
                //             ),
                //           ),
                //           Text(
                //             '97',
                //             style: TextStyle(
                //               fontSize: 32,
                //               fontWeight: FontWeight.bold,
                //               color: Colors.blue,
                //             ),
                //           ),
                //         ],
                //       ),
                //       Icon(
                //         Icons.arrow_forward,
                //         color: Colors.blue,
                //         size: 32,
                //       ),
                //     ],
                //   ),
                // ),
                // SizedBox(height: 24),
                //
                // // Help & Support and Settings
                // ListTile(
                //   leading: Icon(Icons.headset_mic_outlined, color: Colors.grey[700]),
                //   title: Text('Help & Support',
                //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                //   trailing: Icon(Icons.arrow_forward_ios, size: 16),
                //   onTap: () {
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>HelpSupportPage()));
                //   },
                // ),
                //
                // ListTile(
                //   leading: Icon(Icons.settings_outlined, color: Colors.grey[700]),
                //   title: Text('Settings',
                //       style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
                //   trailing: Icon(Icons.arrow_forward_ios, size: 16),
                //   onTap: () {
                //     Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsScreen()));
                //   },
                // ),

                // GestureDetector(
                //   onTap: () {
                //     Navigator.push(context,
                //         MaterialPageRoute(builder: (context) => ScoreCard()));
                //   },
                //   child: Hero(
                //     tag: 'scorecard',
                //     child: Container(
                //       height: screenheight * 0.25, // 20% of screen height
                //       width: screenwidth * 0.9, // 90% of screen width

                //       padding: EdgeInsets.all(screenwidth * 0.00),
                //       decoration: BoxDecoration(
                //         color: Color(0xFFE3F1FD),
                //         //border: Border.all(color: Colors.black),
                //         borderRadius: BorderRadius.circular(12),
                //       ),
                //       child: Stack(
                //         children: [
                //           Positioned(
                //             child: Container(
                //               //decoration: BoxDecoration(border: Border.all()),
                //               child: Image.asset("assets/X1.png"),
                //             ),
                //             bottom: screenheight * 0.21,
                //           ),
                //           Positioned(
                //             child: Container(
                //               height: screenheight * 0.1,
                //               width: screenwidth * 0.2,
                //               // decoration: BoxDecoration(
                //               //   border: Border.all(color: Colors.black),
                //               // ),
                //               child: Image.asset("assets/X2.png"),
                //             ),
                //             top: screenheight * 0.175,
                //             left: screenwidth * 0.25,
                //           ),
                //           Positioned(
                //             child: Container(
                //               height: screenheight * 0.08,
                //               width: screenwidth * 0.2,
                //               // decoration: BoxDecoration(
                //               //   border: Border.all(color: Colors.black),
                //               // ),
                //               child: Image.asset("assets/X3.png"),
                //             ),
                //             // top: screenheight * 0.175,
                //             right: screenwidth * 0.25,
                //           ),
                //           Positioned(
                //             child: Container(
                //               height: screenheight * 0.1,
                //               width: screenwidth * 0.2,
                //               // decoration: BoxDecoration(
                //               //   border: Border.all(color: Colors.black),
                //               // ),
                //               child: Image.asset("assets/X4.png"),
                //             ),
                //             top: screenheight * 0.145,
                //             left: screenwidth * 0.65,
                //           ),
                //           Positioned(
                //             child: CircleAvatar(
                //               radius: 60,
                //               backgroundColor:
                //                   const Color.fromARGB(92, 158, 158, 158),
                //               child: CircleAvatar(
                //                 radius: 50,
                //                 backgroundColor: Color(0xFF5F99BF),
                //                 child: Text(
                //                   '97',
                //                   style: TextStyle(
                //                     fontSize: screenwidth * 0.08,
                //                     fontWeight: FontWeight.bold,
                //                     color: Colors.white,
                //                   ),
                //                 ),
                //               ),
                //             ),
                //             top: screenheight * 0.05,
                //             left: screenwidth * 0.05,
                //           ),
                //           Positioned(
                //             child: CircleAvatar(
                //               backgroundColor: Colors.white,
                //               child: Icon(
                //                 Icons.arrow_forward,
                //                 color: Colors.blue,
                //                 size: screenwidth * 0.06,
                //               ),
                //             ),
                //             top: screenheight * 0.15,
                //             left: screenwidth * 0.45,
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),

                Card(
                  child: Container(
                    padding:
                        EdgeInsets.all((screenWidth * 0.04).clamp(12.0, 24.0)),
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
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ScoreCard()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF5A9ECF),
                                padding: EdgeInsets.symmetric(
                                  horizontal:
                                      (screenWidth * 0.03).clamp(12.0, 20.0),
                                  vertical:
                                      (screenHeight * 0.01).clamp(8.0, 16.0),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: FittedBox(
                                child: Text(
                                  "Check",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        (screenWidth * 0.035).clamp(14.0, 18.0),
                                  ),
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
                              subtitle:
                                  "Average score is total scores by tests.",
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
                SizedBox(height: screenHeight * 0.03), // 3% of screen height

                // Help & Support and Settings
                ListTile(
                  leading: Icon(
                    Icons.headset_mic_outlined,
                    color: Colors.grey[700],
                    size: screenWidth * 0.06, // 6% of screen width
                  ),
                  title: Text(
                    'Help & Support',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045, // 4.5% of screen width
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: screenWidth * 0.04, // 4% of screen width
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HelpSupportPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings_outlined,
                    color: Colors.grey[700],
                    size: screenWidth * 0.06, // 6% of screen width
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: screenWidth * 0.045, // 4.5% of screen width
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: screenWidth * 0.04, // 4% of screen width
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SettingsScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Widget _buildIndicatorRow({
//   required BuildContext context,
//   required int value,
//   required Color color,
//   required String title,
//   required String subtitle,
//   required double radius,
// }) {
//   final screenWidth = MediaQuery.of(context).size.width;

//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       CircularPercentIndicator(
//         radius: radius,
//         lineWidth: (screenWidth * 0.02).clamp(6.0, 10.0),
//         percent: value / 100,
//         center: Text(
//           "$value",
//           style: TextStyle(
//             fontSize: (screenWidth * 0.045).clamp(16.0, 24.0),
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         progressColor: color,
//         backgroundColor: Colors.grey[200]!,
//         circularStrokeCap: CircularStrokeCap.round,
//       ),
//       SizedBox(width: screenWidth * 0.04),
//       Expanded(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 fontSize: (screenWidth * 0.035).clamp(13.0, 18.0),
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: MediaQuery.of(context).size.height * 0.005),
//             Text(
//               subtitle,
//               style: TextStyle(
//                 fontSize: (screenWidth * 0.03).clamp(11.0, 16.0),
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//       ),
//     ],
//   );
// }
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
        // Added these properties to make it anticlockwise
        reverse: true,
        rotateLinearGradient: true,
        // Adding animation
        animation: true,
        animationDuration: 1000,
        startAngle: 0, // Start from the top
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
