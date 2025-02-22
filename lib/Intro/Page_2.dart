// import 'package:flutter/material.dart';
// import 'package:hive_application/Intro/Page_3.dart';
//
// class Page2 extends StatelessWidget {
//   const Page2({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             // Skip Button
//
//             Align(
//               alignment: Alignment.topRight,
//               child: Padding(
//                 padding: const EdgeInsets.only(top: 50,right: 20),
//                 child: TextButton(
//                   onPressed: () {
//                     // Handle Skip button press
//                   },
//                   child: const Text(
//                     "Skip",
//                     style: TextStyle(
//                       color: Colors.black54,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             // Main Content
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Illustration Image
//                 Padding(
//                   padding: const EdgeInsets.only(top: 100),
//                   child: Container(
//                     height: 400,
//                     width: 400,
//                     child: Image.asset(
//                       'assets/1.png',
//                       height: 250,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//                 //const SizedBox(height: 20),
//                 // Description Text
//                 Padding(
//                   padding: const EdgeInsets.only(left: 150),
//                   child: Row(
//                     children: [
//                       Container(
//                         height: 5,
//                         width: 40,
//                         // decoration: BoxDecoration(
//                         //   borderRadius: BorderRadius.circular(30)
//                         // ),
//                         color: Colors.blue,
//                       ),
//                       Container(
//                         height: 5,
//                         width: 40,
//                         color: Color(0xff9BA8B5FF),
//                       ),
//                       Container(
//                         height: 5,
//                         width: 40,
//                         color: Color(0xff9BA8B5FF),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 50,),
//                 const Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 24.0),
//                   child: Text(
//                     "Track your exam performance\nand eligibility for top medical\n universities.",
//                     //textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.w400,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//                 // const SizedBox(height: 20),
//                 // Indicator
//
//                 const Spacer(),
//                 // Next Button
//                 Column(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(bottom: 50.0,left: 30,top: 30),
//                       child: ElevatedButton(
//                         style: ElevatedButton.styleFrom(
//                           padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
//                           backgroundColor: Colors.blue, // Button color
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         onPressed: () {
//                           Navigator.push(context, MaterialPageRoute(builder: (context)=>Page3()));
//
//                           // Handle Get Started button press
//                         },
//                         child: const Text(
//                           "Next",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//
//                 // Terms Text
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 80),
//                   child: Text.rich(
//                     TextSpan(
//                       text: "By registering, you agree to ",
//                       style: const TextStyle(color: Colors.black54, fontSize: 14,fontWeight: FontWeight.bold),
//                       children: [
//                         TextSpan(
//                           text: "our terms.",
//                           style: const TextStyle(
//                             color: Color(0xff83BCDA),
//                            // decoration: TextDecoration.underline,
//                           ),
//                           // Add navigation to terms here
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_application/Intro/Page_3.dart';

import 'Page_5.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      backgroundColor: Color(0xFFFFFFFF),
      body: SafeArea(
        child: Stack(
          children: [
            // Container(
            //     // decoration:
            //     // BoxDecoration(border: Border.all(style: BorderStyle.solid)),
            //     height: 350,
            //     width: 400,
            //     child: Image.asset(
            //       "assets/Rectangle.png",
            //       fit: BoxFit.fill,
            //     )
            //     ),

            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Container(
                height: screenHeight * 0.48,
                width: screenWidth * 0.72,
                decoration: BoxDecoration(
                  color: Color(0xFFF4FAFF),
                  // border: Border.all(
                  //   style: BorderStyle.solid,
                  // ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(screenWidth * 0.5),
                    bottomLeft: Radius.circular(screenWidth * 0.5),
                  ),
                ),
              ),
            ),
            // Skip Button
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(
                    left: screenWidth * 0.8, top: screenHeight * 0.05),
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
                      color: const Color(0xFF333333),
                      fontSize: screenWidth * 0.040, // Responsive font size
                      //fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),

            // Main Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Illustration Image
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.1),
                  child: Container(
                    height: screenHeight * 0.4,
                    width: screenWidth * 0.8,
                    //decoration: BoxDecoration(border: Border.all()),
                    child: Image.asset(
                      'assets/1.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.03,
                ),

                // Progress Indicator
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: screenHeight * 0.005,
                        width: screenWidth * 0.1,
                        decoration: BoxDecoration(
                          color: const Color(0xFF3C97D3),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Container(
                        height: screenHeight * 0.005,
                        width: screenWidth * 0.1,
                        decoration: BoxDecoration(
                          color: const Color(0xffF4FAFF),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Container(
                        height: screenHeight * 0.005,
                        width: screenWidth * 0.1,
                        decoration: BoxDecoration(
                          color: const Color(0xffF4FAFF),
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: screenHeight * 0.05),

                // Description Text
                Row(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
                      child: Text(
                          "Track your exam performance\nand eligibility for top medical\nuniversities.",
                          //textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                              fontSize:
                                  screenWidth * 0.045, // Responsive font size
                              fontWeight: FontWeight.w400,
                              height: 2.0,
                              color: Color(0xFF333333),
                            ),
                          )),
                    ),
                  ],
                ),

                const Spacer(),

                // Next Button
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: screenHeight * 0.05),
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
                          backgroundColor:
                              const Color(0xFF3C97D3), // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(screenWidth * 0.02),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Page3()),
                          );
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: "Poppins",
                          ),
                        ),
                      ),
                    ),
                  ),
                ),

                // Terms Text
                Padding(
                  padding: EdgeInsets.only(bottom: screenHeight * 0.03),
                  child: Text.rich(
                    TextSpan(
                      text: "By registering, you agree to ",
                      style: TextStyle(
                        color: Color(0xFF222222),
                        fontSize: screenWidth * 0.035, // Responsive font size
                        // fontWeight: FontWeight.bold,
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
                SizedBox(
                  height: screenHeight * 0.020,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
