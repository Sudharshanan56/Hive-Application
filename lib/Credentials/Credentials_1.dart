// import 'package:flutter/material.dart';
//
// import '../Bottom Navigation Bar/Navigation 1.dart';
// import '../HomePage/HomePage1.dart';
//
//
//
// class NEETFormPage extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 SizedBox(height: 40),
//                 Center(
//                   child: Container(
//                     height: screenHeight * 0.4,
//                     width: screenWidth * 0.9,
//                     child: Image.asset(
//                       'assets/5.png',
//                       height: screenHeight * 0.25,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Text(
//                   "Step in and share your story with us!",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: 30),
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: "Enter Name",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: "Enter NEET ID",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 TextField(
//                   decoration: InputDecoration(
//                     labelText: "Enter NEET Score",
//                     border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: 30),
//                 ElevatedButton(
//
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>navi_home()));
//                     // Add your form submission logic here
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF3C97D3),
//                     minimumSize: Size(double.infinity, 50),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                   ),
//                   child: Text(
//                     "Finish",
//                     style: TextStyle(fontSize: 18,color: Colors.white),
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 50),
//                   child: Row(
//                     children: [
//                       Text(
//                         "By registering, you agree to" ,
//                         style: TextStyle(fontSize: 14, color: Colors.grey),
//                         textAlign: TextAlign.center,
//                       ),
//                       Text("our terms.",style: TextStyle(color: Colors.blue,fontSize: 14),textAlign: TextAlign.center,),
//                     ],
//                   ),
//                 ),
//
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../Bottom Navigation Bar/Navigation 1.dart';
import '../HomePage/HomePage1.dart';

class NEETFormPage extends StatelessWidget {
  const NEETFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCFEFF),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.05),
                  Center(
                    child: SizedBox(
                      height: screenHeight * 0.4,
                      width: screenWidth * 0.9,
                      child: Image.asset(
                        'assets/5.png',
                        height: screenHeight * 0.25,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Row(
                    children: [
                      Text(
                        "Step in and share\n  your story with us!",
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter Name",
                      labelStyle: TextStyle(fontSize: screenWidth * 0.04),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.025),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter NEET ID",
                      labelStyle: TextStyle(fontSize: screenWidth * 0.04),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.025),
                  TextField(
                    decoration: InputDecoration(
                      labelText: "Enter NEET Score",
                      labelStyle: TextStyle(fontSize: screenWidth * 0.04),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  Container(
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
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomSheetApp()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3C97D3),
                        minimumSize: Size(double.infinity, screenHeight * 0.07),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text(
                        "Finish",
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.2),
                    child: Row(
                      children: [
                        Center(
                          child: Row(
                            children: [
                              Text(
                                "By registering, you agree to",
                                style: TextStyle(
                                    fontSize: screenWidth * 0.035,
                                    color: Colors.black),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                " our terms.",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: screenWidth * 0.035),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
