// import 'package:flutter/material.dart';
// import 'package:hive_application/Intro/Page_2.dart';
//
// class Page1 extends StatelessWidget {
//   const Page1({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenheight=MediaQuery.of(context).size.height;
//     double screenwidth=MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           Positioned.fill(
//             child: Image.asset(
//               'assets/main.png', // Make sure the path matches your pubspec.yaml
//               fit: BoxFit.cover,
//             ),
//           ),
//           // Skip Button
//           SafeArea(
//             child: Align(
//               alignment: Alignment.topRight,
//               child: Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextButton(
//                   onPressed: () {
//                     // Handle Skip button press
//                   },
//                   child: const Text(
//                     "Skip",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Center Logo
//           // Center(
//           //   child: Text(
//           //     "LOGO",
//           //     style: const TextStyle(
//           //       fontSize: 36,
//           //       fontWeight: FontWeight.bold,
//           //       color: Colors.white,
//           //     ),
//           //   ),
//           // ),
//           // Get Started Button
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 80.0),
//               child: Container(
//                 height: screenheight*0.07,
//                 width: screenwidth*0.9,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 20),
//                     backgroundColor: Colors.blue, // Button color
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
//                     // Handle Get Started button press
//                   },
//                   child:  Center(
//                     child: Padding(
//                       padding: const EdgeInsets.only(bottom: 0),
//                       child: Text(
//                         "Get Started",
//                         style: TextStyle(
//                           fontSize: 21,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           // Terms Text
//           // Container(
//           //   height: screenheight*0.2,
//           //   width: screenwidth*0.8,
//           //   child: ElevatedButton(onPressed: () {
//           //     Navigator.push(context, MaterialPageRoute(builder: (context)=>Page2()));
//           //     // Handle Get Started button press
//           //   },
//           //       child: Text(
//           //         "Get Started",
//           //         style: TextStyle(
//           //             fontSize: 20,
//           //             fontWeight: FontWeight.bold,
//           //             color: Colors.white
//           //         ),
//           //       ),),
//           // ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding: const EdgeInsets.only(bottom: 20.0),
//               child: Text.rich(
//                 TextSpan(
//                   text: "By registering, you agree to ",
//                   style: const TextStyle(color: Colors.white, fontSize: 14),
//                   children: [
//                     TextSpan(
//                       text: "our terms.",
//                       style: const TextStyle(
//                         color: Colors.blue,
//                         decoration: TextDecoration.underline,
//                       ),
//                       // Add navigation to terms here
//                     ),
//                   ],
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
//

import 'package:flutter/material.dart';
import 'package:hive_application/Intro/Page_2.dart';

import 'Page_5.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // Background Image
            Positioned.fill(
              child: Image.asset(
                'assets/main.png', // Ensure the path matches your pubspec.yaml
                fit: BoxFit.fill,
              ),
            ),
      
            // Skip Button
            SafeArea(
              child: Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginSelectionScreen()));
                      // Handle Skip button press
                    },
                    child: Text(
                      "Skip",
                      style: TextStyle(
                        color: const Color(0xFFEEEEEEB2),
                        fontSize: screenWidth * 0.040, // Responsive font size
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
      
            // Get Started Button
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Padding(
            //     padding: EdgeInsets.only(bottom: screenHeight * 0.1),
            //     child: SizedBox(
            //       height: screenHeight * 0.07,
            //       width: screenWidth * 0.9,
            //       child: ElevatedButton(
            //         style: ElevatedButton.styleFrom(
            //           backgroundColor: const Color(0xFF3C97D3), // Button color
            //           shape: RoundedRectangleBorder(
            //             borderRadius: BorderRadius.circular(screenWidth * 0.02),
            //           ),
            //         ),
            //         onPressed: () {
            //           Navigator.push(
            //             context,
            //             MaterialPageRoute(builder: (context) => const Page2()),
            //           );
            //         },
            //         child: Center(
            //           child: Text(
            //             "Get Started",
            //             style: TextStyle(
            //               fontSize: screenWidth * 0.040, // Responsive font size
            //               fontWeight: FontWeight.bold,
            //               color: Colors.white,
            //             ),
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
      
            // // Terms Text
            // Align(
            //   alignment: Alignment.bottomCenter,
            //   child: Padding(
            //     padding: EdgeInsets.only(bottom: screenHeight * 0.03),
            //     child: Text.rich(
            //       TextSpan(
            //         text: "By registering, you agree to ",
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: screenWidth * 0.035, // Responsive font size
            //         ),
            //         children: const [
            //           TextSpan(
            //             text: "our terms.",
            //             style: TextStyle(
            //               color: Color(0xFF3C97D3),
            //               // decoration: TextDecoration.underline,
            //             ),
            //             // Add navigation to terms here
            //           ),
            //         ],
            //       ),
            //       textAlign: TextAlign.center,
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(
                  top: screenHeight * 0.8,
                  left: screenWidth * 0.05,
                  right: screenWidth * 0.05),
              child: Container(
                height: screenHeight * 0.08,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3C97D3), // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.02),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page2()),
                    );
                  },
                  child: Text(
                    "Get started",
                    style: TextStyle(
                      fontSize: screenWidth * 0.05, // Responsive font size
                      // fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.020,
            ),
      
            // Terms Text
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                child: Text.rich(
                  TextSpan(
                    text: "By registering, you agree to ",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.035, // Responsive font size
                      fontWeight: FontWeight.bold,
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
            SizedBox(
              height: screenHeight * 0.020,
            )
          ],
        ),
      ),
    );
  }
}
