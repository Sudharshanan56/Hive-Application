// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import '../Bottom Navigation Bar/Navigation 1.dart';
// import '../HomePage/HomePage1.dart';
// import 'package:http/http.dart' as http;

// class NEETFormPage extends StatefulWidget {
//   //final String userId;
//   const NEETFormPage({super.key});

//   @override
//   State<NEETFormPage> createState() => _NEETFormPageState();
// }

// class _NEETFormPageState extends State<NEETFormPage> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController neetidController = TextEditingController();
//   TextEditingController neetscoreController = TextEditingController();
//   bool isLoading = false;

//   // Future<void> submitStudentDetails() async {
//   //   final String apiUrl = "http://localhost:3000/api/hiveapp/addStudent";

//   //   // Data to send
//   //   Map<String, dynamic> data = {
//   //     "UserId": widget.userId, // UserId from OTP page
//   //     "Name": nameController.text,
//   //     "NeedId": neetidController.text,
//   //     "NeedScore": int.tryParse(neetscoreController.text) ?? 0,
//   //   };

//   //   setState(() {
//   //     isLoading = true;
//   //   });

//   //   try {
//   //     final response = await http.post(
//   //       Uri.parse(apiUrl),
//   //       headers: {"Content-Type": "application/json"},
//   //       body: jsonEncode(data),
//   //     );

//   //     if (response.statusCode == 201 || response.statusCode == 200) {
//   //       // Successfully added
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         SnackBar(content: Text("Student Details Saved Successfully!")),
//   //       );
//   //       Navigator.push(
//   //         context,
//   //         MaterialPageRoute(
//   //           builder: (context) =>
//   //               BottomSheetApp(userId: widget.userId), // Pass userId here
//   //         ),
//   //       );
//   //     } else {
//   //       // Error response
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         SnackBar(content: Text("Failed to save details")),
//   //       );
//   //     }
//   //   } catch (error) {
//   //     ScaffoldMessenger.of(context).showSnackBar(
//   //       SnackBar(content: Text("Error: $error")),
//   //     );
//   //   }

//   //   setState(() {
//   //     isLoading = false;
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFFFCFEFF),
//         body: SafeArea(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   SizedBox(height: screenHeight * 0.00),
//                   Center(
//                     child: Container(
//                       height: screenHeight * 0.4,
//                       width: screenWidth * 0.9,
//                       // decoration: BoxDecoration(
//                       //   border: Border.all()
//                       // ),
//                       child: Image.asset(
//                         'assets/5.png',
//                         height: screenHeight * 0.25,
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.00),
//                   Row(
//                     children: [
//                       Text(
//                         "Step in and share\n  your story with us!",
//                         style: GoogleFonts.poppins(
//                             fontSize: screenWidth * 0.07,
//                             fontWeight: FontWeight.w500,
//                             color: Color(0xFF111111)),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   TextFormField(
//                     controller: nameController,
//                     decoration: InputDecoration(
//                       labelText: "Enter Name",
//                       labelStyle: GoogleFonts.poppins(
//                         fontSize: screenWidth * 0.04,
//                       ),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.025),
//                   TextFormField(
//                     controller: neetidController,
//                     decoration: InputDecoration(
//                       labelText: "Enter NEET ID",
//                       labelStyle:
//                           GoogleFonts.poppins(fontSize: screenWidth * 0.04),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.025),
//                   TextFormField(
//                     controller: neetscoreController,
//                     decoration: InputDecoration(
//                       labelText: "Enter NEET Score",
//                       labelStyle:
//                           GoogleFonts.poppins(fontSize: screenWidth * 0.04),
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.04),
//                   Container(
//                     decoration: BoxDecoration(
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.3),
//                           spreadRadius: 0,
//                           blurRadius: 4,
//                           offset: Offset(0, 4),
//                         ),
//                       ],
//                     ),
//                     child: ElevatedButton(
//                       onPressed: () {
//                       //  submitStudentDetails();
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                                 builder: (context) => BottomSheetApp(
//                                       //userId: widget.userId,
//                                     )));
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF3C97D3),
//                         minimumSize: Size(double.infinity, screenHeight * 0.07),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       child: FittedBox(
//                         fit: BoxFit.scaleDown,
//                         child: Text(
//                           "Finish",
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.045,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.03),
//                   Padding(
//                     padding: EdgeInsets.only(left: screenWidth * 0.15),
//                     child: Row(
//                       children: [
//                         Center(
//                           child: Row(
//                             children: [
//                               Text(
//                                 "By registering, you agree to",
//                                 style: TextStyle(
//                                     fontSize: screenWidth * 0.035,
//                                     color: Colors.black),
//                                 textAlign: TextAlign.center,
//                               ),
//                               Text(
//                                 " our terms.",
//                                 style: TextStyle(
//                                     color: Colors.blue,
//                                     fontSize: screenWidth * 0.035),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

//==========================================================

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../Bottom Navigation Bar/Navigation 1.dart';
import '../HomePage/HomePage1.dart';

class NEETFormPage extends StatefulWidget {
  const NEETFormPage({super.key});

  @override
  State<NEETFormPage> createState() => _NEETFormPageState();
}

class _NEETFormPageState extends State<NEETFormPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController neetidController = TextEditingController();
  TextEditingController neetscoreController = TextEditingController();
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFCFEFF),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: screenHeight * 0.02),
                    Center(
                      child: Container(
                        height: screenHeight * 0.4,
                        width: screenWidth * 0.9,
                        // decoration: BoxDecoration(
                        //   border: Border.all()
                        // ),
                        child: Image.asset(
                          'assets/5.png',
                          height: screenHeight * 0.25,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Text(
                          "Step in and share\n  your story with us!",
                          style: GoogleFonts.poppins(
                              fontSize: screenWidth * 0.07,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF111111)),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    _buildTextField(nameController, "Enter Name", screenWidth),
                    SizedBox(height: screenHeight * 0.025),
                    _buildTextField(
                        neetidController, "Enter NEET ID", screenWidth),
                    SizedBox(height: screenHeight * 0.025),
                    _buildTextField(
                        neetscoreController, "Enter NEET Score", screenWidth),
                    SizedBox(height: screenHeight * 0.04),
                    _buildSubmitButton(screenWidth, screenHeight),
                    SizedBox(height: screenHeight * 0.03),
                    _buildTermsAndConditions(screenWidth),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String label, double screenWidth) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: GoogleFonts.poppins(fontSize: screenWidth * 0.04),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }

  Widget _buildSubmitButton(double screenWidth, double screenHeight) {
    return Container(
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
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BottomSheetApp(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF3C97D3),
          minimumSize: Size(double.infinity, screenHeight * 0.07),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "Finish",
            style: TextStyle(
              fontSize: screenWidth * 0.045,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTermsAndConditions(double screenWidth) {
    return Padding(
      padding: EdgeInsets.only(left: screenWidth * 0.15),
      child: Row(
        children: [
          Center(
            child: Row(
              children: [
                Text(
                  "By registering, you agree to",
                  style: TextStyle(
                    fontSize: screenWidth * 0.035,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  " our terms.",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: screenWidth * 0.035,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
