// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
//
//
// class MockMasterScreen extends StatelessWidget {
//   List txt=["Time Management: Practice under\ntimed conditions to improve speed\nand accuracy. ",
//             "Review Mistakes: Learn from errors\nto strengthen weak areas and\nboost confidence.",
//             "Focus on Key Topics: Prioritize\nhigh-weightage subjects and\nfrequently tested concepts."
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text(
//           'Mock Master',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             _buildTodayTaskCard(),
//             _buildPerformanceCard(),
//             _buildInfoCard(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTodayTaskCard() {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Container(
//         height: 200,
//         width: 380,
//         decoration: BoxDecoration(
//           // color: Colors.redAccent,
//           gradient: LinearGradient(
//             begin: Alignment.bottomLeft,
//             end: Alignment.topRight,
//             colors: [ Colors.red, Colors.redAccent],
//           ),
//           borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Text(
//                     'Today Task',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(width: 80),
//                   Text(
//                     '12th Dec 2024',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   foregroundColor: Colors.redAccent,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 onPressed: () {
//                   _showEmailVerificationSheet();
//                 },
//                 child: const Text('Begin Now!',style: TextStyle(fontWeight: FontWeight.bold),),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   void _showEmailVerificationSheet(BuildContext context) {
//     showModalBottomSheet<void>(
//       context: context,
//       isDismissible: false,
//       enableDrag: false,
//       builder: (BuildContext context) {
//         return Container(
//           height: 200,
//           color: Colors.white,
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Icon(Icons.camera_alt),
//                  Text("Camera Access"),
//                  Text("Allow access to your camera to verify your\nidentify and monitor the exam environment"),
//                  Container(
//                   height: 50,
//                   width: double.infinity,
//                   color: const Color(0xff3C97D3),
//                   child: const Center(
//                     child: Text(
//                       "Verify Email",
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                 ),
//
//
//             ],
//           ),
//         );
//       },
//     );
//   }
//   Widget _buildPerformanceCard() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.shade300,
//               blurRadius: 10,
//               offset: Offset(0, 5),
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             height: 180,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Last Performance',
//                   style: TextStyle(
//                     color: Colors.grey.shade700,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Highlight!',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Showcasing Your Best Yet!',
//                   style: TextStyle(
//                     color: Colors.grey.shade500,
//                     fontSize: 14,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 LinearProgressIndicator(
//                   value: 0.0, // Progress value
//                   backgroundColor: Color(0xFFB1B1FF),
//                   color: Colors.redAccent,
//                 ),
//                 const SizedBox(height: 8),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     '0/100',
//                     style: TextStyle(
//                       color: Colors.grey.shade700,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoCard() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.redAccent,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             height: 150,
//             child: CarouselSlider.builder(
//                 options: CarouselOptions(
//                   height: 180.0,
//                   enlargeCenterPage: true,
//                   autoPlay: true,
//                   aspectRatio: 16 / 9,
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   enableInfiniteScroll: true,
//                   scrollDirection: Axis.horizontal,
//                   autoPlayAnimationDuration: Duration(milliseconds: 800),
//                   viewportFraction: 1,
//
//
//                 ),
//                 itemCount: 3,
//                 itemBuilder: (BuildContext context, int index, int realIndex)
//                 {
//                   return Container(
//                     height: 200,
//                     width: 400,
//                     child: Center(child: Text(txt[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
//                     // decoration: BoxDecoration(
//                     //     image: DecorationImage(
//                     //       image: AssetImage(txt[index]),
//                     //     )
//                     // ),
//                   );
//                 }
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../Dashboard_1.dart';
import 'Mock Test.dart';

class MockMasterScreen extends StatefulWidget {
  //  final CarouselController carouselController = CarouselController();
  // int _currentIndex = 0; // Track active page index

  final Function(int) navigateToPage; // Callback to navigate

  const MockMasterScreen({super.key, required this.navigateToPage});

  @override
  State<MockMasterScreen> createState() => _MockMasterScreenState();
}

class _MockMasterScreenState extends State<MockMasterScreen> {
  final CarouselController carouselController = CarouselController();
  final PageController controller = PageController();
  final CarouselController _controller = CarouselController();

  //  final CarouselController carouselController = CarouselController();
  int _currentIndex = 0; // Track active page index
  final List<String> txt = [
    "Time Management: Practice under\ntimed conditions to improve speed\nand accuracy.",
    "Review Mistakes: Learn from errors\nto strengthen weak areas and\nboost confidence.",
    "Focus on Key Topics: Prioritize\nhigh-weightage subjects and\nfrequently tested concepts."
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Mock Master',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          actions: [
            IconButton(
              icon:  Icon(Icons.logout, color: Colors.black),
              onPressed: () {
                widget.navigateToPage(2);
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => DashboardPage()));
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildTodayTaskCard(context),
              _buildPerformanceCard(context),
              _buildInfoCard(context, txt),
            ],
          ),
        ),
      ),
    );
  }

  // Widget _buildTodayTaskCard(BuildContext context) {
  Widget _buildTodayTaskCard(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.all(screenWidth * 0.04), // Responsive padding
      child: Container(
        height: screenHeight * 0.20, // Responsive height
        width: screenWidth * 0.9, // Responsive width
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              //colors: [Colors.red, Colors.redAccent],
              colors: [Color(0xFFF3424D), Color(0xFFFF5F68)]),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(screenWidth * 0.04),
            topRight: Radius.circular(screenWidth * 0.08),
            // Responsive radius
          ),
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.10,
                  width: screenWidth * 0.20,
                  // decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset(
                    "assets/M1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
              child: Container(
                  height: screenHeight * 0.10,
                  width: screenWidth * 0.20,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset("assets/M2.png")),
              duration: Duration(seconds: 1),
              top: screenHeight * 0.12,
              left: screenWidth * 0.70,
            ),
            Padding(
              padding: EdgeInsets.all(
                  screenWidth * 0.04), // Responsive inner padding
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: screenHeight * 0.035), // Responsive spacing
                  Row(
                    children: [
                      Text(
                        'Today Task',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: screenWidth * 0.05,
                          //  fontFamily: Poppins, // Responsive font size
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        '12th Dec 2024',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.04, // Responsive font size
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03), // Responsive spacing
                  SizedBox(
                    height: screenHeight * 0.04,
                    width: screenWidth * 0.3, // Responsive height
                    // Responsive height
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFFF34651),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              screenWidth * 0.06), // Responsive radius
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MockTestPage()));
                      },
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          'Begin Now!',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                screenWidth * 0.035, // Responsive font size
                          ),
                        ),
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
  }

  // void _CameraAccess(BuildContext context) {
  // void _CameraAccess(BuildContext context) {
  //   final screenHeight = MediaQuery.of(context).size.height;
  //   final screenWidth = MediaQuery.of(context).size.width;

  //   showModalBottomSheet<void>(
  //     context: context,
  //     isDismissible: false,
  //     enableDrag: false,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topRight: Radius.circular(screenWidth * 0.08),
  //         topLeft: Radius.circular(screenWidth * 0.08),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: screenHeight * 0.35,
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.only(
  //             topRight: Radius.circular(screenWidth * 0.08),
  //             topLeft: Radius.circular(screenWidth * 0.08),
  //           ),
  //         ),
  //         padding: EdgeInsets.all(screenWidth * 0.04),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             Icon(
  //               Icons.camera_alt,
  //               size: screenWidth * 0.12,
  //               color: const Color(0xFFF3434E),
  //             ),
  //             SizedBox(height: screenHeight * 0.02),
  //             Text(
  //               "Camera Access",
  //               style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: screenWidth * 0.05,
  //               ),
  //             ),
  //             SizedBox(height: screenHeight * 0.01),
  //             Text(
  //               "Allow access to your camera to verify your\nidentity and monitor the exam environment.",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: screenWidth * 0.035,
  //                 color: Colors.grey,
  //               ),
  //             ),
  //             SizedBox(height: screenHeight * 0.03),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 SizedBox(
  //                   height: screenHeight * 0.06,
  //                   width: screenWidth * 0.35,
  //                   child: ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.redAccent,
  //                       foregroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius:
  //                             BorderRadius.circular(screenWidth * 0.08),
  //                       ),
  //                     ),
  //                     onPressed: () {
  //                       Navigator.pop(
  //                           context); // Close the current bottom sheet

  //                       _MicrophoneAccess(context);
  //                     },
  //                     child: const Text(
  //                       'Allow',
  //                       style: TextStyle(fontWeight: FontWeight.bold),
  //                     ),
  //                   ),
  //                 ),
  //                 Container(
  //                   height: screenHeight * 0.06,
  //                   width: screenWidth * 0.35,
  //                   decoration: BoxDecoration(
  //                     border: Border.all(color: const Color(0xFFF3434E)),
  //                     borderRadius: BorderRadius.circular(screenWidth * 0.08),
  //                   ),
  //                   child: ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.white,
  //                       foregroundColor: Colors.black,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius:
  //                             BorderRadius.circular(screenWidth * 0.08),
  //                       ),
  //                     ),
  //                     onPressed: () {
  //                       Navigator.pop(context);
  //                     },
  //                     child: const Text(
  //                       'Deny',
  //                       style: TextStyle(fontWeight: FontWeight.bold),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  // void _MicrophoneAccess(BuildContext context) {
  // void _MicrophoneAccess(BuildContext context) {
  //   final screenHeight = MediaQuery.of(context).size.height;
  //   final screenWidth = MediaQuery.of(context).size.width;

  //   showModalBottomSheet<void>(
  //     context: context,
  //     isDismissible: false,
  //     enableDrag: false,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topRight: Radius.circular(screenHeight * 0.04),
  //         topLeft: Radius.circular(screenHeight * 0.04),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: screenHeight * 0.35,
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.only(
  //             topRight: Radius.circular(screenHeight * 0.04),
  //             topLeft: Radius.circular(screenHeight * 0.04),
  //           ),
  //         ),
  //         padding: EdgeInsets.all(screenWidth * 0.04),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             Icon(
  //               Icons.mic_none,
  //               size: screenWidth * 0.12,
  //               color: const Color(0xFFF3434E),
  //             ),
  //             SizedBox(height: screenHeight * 0.02),
  //             Text(
  //               "Microphone Access",
  //               style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: screenWidth * 0.045,
  //               ),
  //             ),
  //             SizedBox(height: screenHeight * 0.01),
  //             Text(
  //               "Allow microphone access to ensure fairness and avoid unauthorized discussions",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: screenWidth * 0.035,
  //                 color: Colors.grey,
  //               ),
  //             ),
  //             SizedBox(height: screenHeight * 0.03),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               children: [
  //                 SizedBox(
  //                   height: screenHeight * 0.06,
  //                   width: screenWidth * 0.4,
  //                   child: ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.redAccent,
  //                       foregroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius:
  //                             BorderRadius.circular(screenHeight * 0.03),
  //                       ),
  //                     ),
  //                     onPressed: () {
  //                       Navigator.pop(
  //                           context); // Close the current bottom sheet

  //                       _ScreenAccess(context);
  //                     },
  //                     child: const Text(
  //                       'Allow',
  //                       style: TextStyle(fontWeight: FontWeight.bold),
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: screenHeight * 0.06,
  //                   width: screenWidth * 0.4,
  //                   child: ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.white,
  //                       foregroundColor: Colors.black,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius:
  //                             BorderRadius.circular(screenHeight * 0.03),
  //                       ),
  //                       side: const BorderSide(color: Color(0xFFF3434E)),
  //                     ),
  //                     onPressed: () {
  //                       Navigator.pop(context);
  //                     },
  //                     child: const Text(
  //                       'Deny',
  //                       style: TextStyle(fontWeight: FontWeight.bold),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  // void _ScreenAccess(BuildContext context) {
  // void _ScreenAccess(BuildContext context) {
  //   final screenHeight = MediaQuery.of(context).size.height;
  //   final screenWidth = MediaQuery.of(context).size.width;

  //   showModalBottomSheet<void>(
  //     context: context,
  //     isDismissible: false,
  //     enableDrag: false,
  //     shape: RoundedRectangleBorder(
  //       borderRadius: BorderRadius.only(
  //         topRight: Radius.circular(screenWidth * 0.08),
  //         topLeft: Radius.circular(screenWidth * 0.08),
  //       ),
  //     ),
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: screenHeight * 0.3,
  //         decoration: BoxDecoration(
  //           color: Colors.white,
  //           borderRadius: BorderRadius.only(
  //             topRight: Radius.circular(screenWidth * 0.08),
  //             topLeft: Radius.circular(screenWidth * 0.08),
  //           ),
  //         ),
  //         padding: EdgeInsets.all(screenWidth * 0.04),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[
  //             Icon(
  //               Icons.phone_android_outlined,
  //               size: screenWidth * 0.12,
  //               color: const Color(0xFFF3434E),
  //             ),
  //             SizedBox(height: screenHeight * 0.02),
  //             Text(
  //               "Screen Monitoring Access",
  //               style: TextStyle(
  //                 fontWeight: FontWeight.bold,
  //                 fontSize: screenWidth * 0.05,
  //               ),
  //             ),
  //             SizedBox(height: screenHeight * 0.01),
  //             Text(
  //               "Allow screen access to prevent cheating\n and maintain exam integrity",
  //               textAlign: TextAlign.center,
  //               style: TextStyle(
  //                 fontSize: screenWidth * 0.035,
  //                 color: Colors.grey,
  //               ),
  //             ),
  //             SizedBox(height: screenHeight * 0.03),
  //             Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //               children: [
  //                 SizedBox(
  //                   height: screenHeight * 0.06,
  //                   width: screenWidth * 0.4,
  //                   child: ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.redAccent,
  //                       foregroundColor: Colors.white,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius:
  //                             BorderRadius.circular(screenWidth * 0.05),
  //                       ),
  //                     ),
  //                     onPressed: () {
  //                       Navigator.pop(
  //                           context); // Close the current bottom sheet

  //                       Navigator.push(
  //                         context,
  //                         MaterialPageRoute(
  //                           builder: (context) => MockTestPage(),
  //                         ),
  //                       );
  //                     },
  //                     child: Text(
  //                       'Allow',
  //                       style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: screenWidth * 0.045,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 SizedBox(
  //                   height: screenHeight * 0.06,
  //                   width: screenWidth * 0.4,
  //                   child: ElevatedButton(
  //                     style: ElevatedButton.styleFrom(
  //                       backgroundColor: Colors.white,
  //                       foregroundColor: Colors.black,
  //                       shape: RoundedRectangleBorder(
  //                         borderRadius:
  //                             BorderRadius.circular(screenWidth * 0.05),
  //                       ),
  //                       side: const BorderSide(color: Color(0xFFF3434E)),
  //                     ),
  //                     onPressed: () {
  //                       Navigator.pop(context);
  //                     },
  //                     child: Text(
  //                       'Deny',
  //                       style: TextStyle(
  //                         fontWeight: FontWeight.bold,
  //                         fontSize: screenWidth * 0.045,
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

  // Widget _buildPerformanceCard() {
  Widget _buildPerformanceCard(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04, // Responsive horizontal padding
        vertical: screenHeight * 0.01, // Responsive vertical padding
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(
              screenWidth * 0.04), // Responsive border radius
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: screenWidth * 0.03, // Responsive blur radius
              offset:
                  Offset(0, screenHeight * 0.005), // Responsive shadow offset
            ),
          ],
        ),
        child: Padding(
          padding:
              EdgeInsets.all(screenWidth * 0.04), // Responsive inner padding
          child: SizedBox(
            height: screenHeight * 0.25, // Responsive card height
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Performance',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: screenWidth * 0.04, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01), // Responsive spacing
                Text(
                  'Highlight!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: screenWidth * 0.05, // Responsive font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Showcasing Your Best Yet!',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: screenWidth * 0.035, // Responsive font size
                  ),
                ),
                SizedBox(height: screenHeight * 0.02), // Responsive spacing
                const LinearProgressIndicator(
                  value: 0.0, // Progress value
                  backgroundColor: Color.fromARGB(255, 233, 176, 176),
                  //color: Color(0xFFF3434E),
                ),
                SizedBox(height: screenHeight * 0.01), // Responsive spacing
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '0/100',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: screenWidth * 0.035, // Responsive font size
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _buildInfoCard() {
  Widget _buildInfoCard(BuildContext context, List<String> txt) {
    int activeIndex = 0;
    //  final CarouselController carouselController = CarouselController();
    final CarouselSliderController carouselController =
        CarouselSliderController();
    final PageController controller = PageController();

    int _currentIndex = 0; // Track active page index
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal:
            screenWidth * 0.04, // 4% of screen width for horizontal padding
        vertical:
            screenHeight * 0.01, // 1% of screen height for vertical padding
      ),
      child: Container(
        decoration: BoxDecoration(
          //border: Border.all(),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFFF3424D), Color(0xFFFF5F68)]),

          borderRadius: BorderRadius.circular(
              screenWidth * 0.04), // Responsive border radius
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.15,
                  // decoration: BoxDecoration(border: Border.all()),
                  child: Image.asset(
                    "assets/C1.png",
                    fit: BoxFit.fill,
                  ),
                ),
                duration: Duration(seconds: 1)),
            AnimatedPositioned(
              child: Container(
                height: screenHeight * 0.05,
                width: screenWidth * 0.15,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Image.asset(
                  "assets/C2.png",
                  fit: BoxFit.fill,
                ),
              ),
              duration: Duration(seconds: 1),
              top: screenHeight * 0.16,
              left: screenWidth * 0.2,
            ),
            AnimatedPositioned(
              child: Container(
                height: screenHeight * 0.04,
                width: screenWidth * 0.12,
                decoration: BoxDecoration(
                    // border: Border.all(),
                    // borderRadius: BorderRadius.circular(100)
                    ),
                child: Image.asset(
                  "assets/C3.png",
                  fit: BoxFit.fill,
                ),
              ),
              duration: Duration(seconds: 1),
              left: screenWidth * 0.55,
              top: screenHeight * 0.01,
            ),
            AnimatedPositioned(
              child: Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.22,
                // decoration: BoxDecoration(border: Border.all()),
                child: Image.asset(
                  "assets/C4.png",
                  //fit: BoxFit.fill,
                ),
              ),
              duration: Duration(seconds: 1),
              top: screenHeight * 0.13,
              left: screenHeight * 0.32,
            ),
            // SizedBox(
            //   height: screenHeight *
            //       0.2, // 20% of screen height for container height
            //   child: CarouselSlider.builder(
            //     options: CarouselOptions(
            //       height: screenHeight * 0.2, // Responsive carousel height
            //       enlargeCenterPage: true,
            //       autoPlay: true,
            //       aspectRatio: 16 / 9,
            //       autoPlayCurve: Curves.fastOutSlowIn,
            //       enableInfiniteScroll: true,
            //       scrollDirection: Axis.horizontal,
            //       autoPlayAnimationDuration: const Duration(milliseconds: 800),
            //       viewportFraction: 1,
            //     ),
            //     itemCount: txt.length,
            //     itemBuilder: (BuildContext context, int index, int realIndex) {
            //       return Center(
            //         child: Text(
            //           txt[index],
            //           style: TextStyle(
            //             color: Colors.white,
            //             fontWeight: FontWeight.bold,
            //             fontSize: screenWidth *
            //                 0.05, // Responsive font size (5% of screen width)
            //           ),
            //           textAlign: TextAlign.center,
            //         ),
            //       );
            //     },
            //   ),
            // ),
            SizedBox(
              height: screenHeight *
                  0.2, // 20% of screen height for container height
              child: CarouselSlider.builder(
                // carouselController: _controller,
                options: CarouselOptions(
                  height: screenHeight * 0.2, // Responsive carousel height
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  scrollDirection: Axis.horizontal,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                ),
                itemCount: txt.length,
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Center(
                    child: Text(
                      txt[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05, // Responsive font size
                      ),
                      textAlign: TextAlign.center,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            // /
          ],
        ),
      ),
    );
  }
}
