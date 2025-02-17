// import 'dart:convert';
// import 'package:country_picker/country_picker.dart';
// import 'package:flutter/material.dart';
// import '../Credentials/Credentials_1.dart';
// import 'package:http/http.dart' as http;
// import 'API Playground/Credentials_Api.dart';

// class OTPVerificationScreen extends StatefulWidget {
//   const OTPVerificationScreen({super.key});

//   @override
//   _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
// }

// class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
//   final List<TextEditingController> _otpControllers =
//       List.generate(4, (_) => TextEditingController());
//   final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
//   final TextEditingController phoneController = TextEditingController();
//   bool isPhoneEntered = false;
//   bool isOtpSent = false;

//   String countryCode = "+91"; // Initial country code

//   @override
//   void initState() {
//     super.initState();
//     phoneController.addListener(() {
//       setState(() {
//         isPhoneEntered = phoneController.text.isNotEmpty;
//       });
//     });
//   }

//   @override
//   void dispose() {
//     phoneController.dispose();
//     for (var controller in _otpControllers) {
//       controller.dispose();
//     }
//     for (var node in _focusNodes) {
//       node.dispose();
//     }
//     super.dispose();
//   }

//   void _onOtpChanged(String value, int index) {
//     if (value.isNotEmpty && index < 3) {
//       FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
//     } else if (value.isEmpty && index > 0) {
//       FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
//     }
//   }

//   bool isOtpComplete() {
//     return _otpControllers.every((controller) => controller.text.isNotEmpty);
//   }

//   void _handleButtonPress() {
//     if (!isOtpSent) {
//       // Handle sending OTP
//       if (phoneController.text.length == 10) {
//         setState(() {
//           isOtpSent = true;
//         });
//         // Add your OTP sending logic here
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Please enter a valid 10-digit mobile number'),
//           ),
//         );
//       }
//     } else {
//       // Handle OTP verification and navigation
//       if (isOtpComplete()) {
//         // Add your OTP verification logic here
//         Navigator.push(
//           context,
//           MaterialPageRoute(builder: (context) => NEETFormPage()),
//         );
//       } else {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Please enter the complete OTP')),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Color(0xFFFCFEFF),
//         body: SingleChildScrollView(
//           child: Stack(
//             children: [
//               Stack(
//                 children: [
//                   Padding(
//                     padding:
//                         EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         SizedBox(height: screenHeight * 0.03),
//                         Center(
//                           child: Container(
//                             height: screenHeight * 0.28,
//                             width: screenWidth * 0.9,
//                             child: Image.asset(
//                               'assets/4.png',
//                               height: screenHeight * 0.20,
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         Text(
//                           "Step in and explore\n   endless possibilities!",
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.060,
//                             fontWeight: FontWeight.bold,
//                             color: Color(0xFF111111),
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         Row(
//                           children: [
//                             GestureDetector(
//                               onTap: () {
//                                 showCountryPicker(
//                                   context: context,
//                                   showPhoneCode: true, // Display country codes
//                                   onSelect: (Country country) {
//                                     setState(() {
//                                       countryCode = "+${country.phoneCode}";
//                                     });
//                                   },
//                                 );
//                               },
//                               child: Container(
//                                 height: screenHeight * 0.07,
//                                 width: screenWidth * 0.15,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Color.fromARGB(142, 102, 102, 102),
//                                   ),
//                                   color: Color(0xFFFFFFFF),
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     countryCode, // Display the selected country code
//                                     style: TextStyle(
//                                       fontSize: screenWidth * 0.045,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: screenWidth * 0.03),
//                             Expanded(
//                               child: Container(
//                                 height: screenHeight * 0.07,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(
//                                     color: Color.fromARGB(142, 102, 102, 102),
//                                   ),
//                                   color: Color(0xFFFFFFFF),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: Padding(
//                                   padding: EdgeInsets.all(8.0),
//                                   child: TextField(
//                                     controller: phoneController,
//                                     keyboardType: TextInputType.number,
//                                     decoration: InputDecoration(
//                                       hintText: "  Enter number",
//                                       border: InputBorder.none,
//                                       hintStyle: TextStyle(
//                                         fontSize: screenWidth * 0.04,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         Row(
//                           children: [
//                             const Text(
//                               "*",
//                               style: TextStyle(
//                                 fontSize: 14,
//                                 color: Colors.red,
//                               ),
//                             ),
//                             Text(
//                               "Enter your mobile number for verification.",
//                               style: TextStyle(
//                                 fontSize: screenWidth * 0.030,
//                                 color: Color(0xFF222222),
//                               ),
//                             ),
//                           ],
//                         ),
//                         SizedBox(height: screenHeight * 0.03),
//                         Row(
//                           children: List.generate(4, (index) {
//                             return Padding(
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: screenWidth * 0.035,
//                               ),
//                               child: Container(
//                                 height: screenHeight * 0.07,
//                                 width: screenWidth * 0.155,
//                                 child: TextFormField(
//                                   controller: _otpControllers[index],
//                                   focusNode: _focusNodes[index],
//                                   keyboardType: TextInputType.number,
//                                   textAlign: TextAlign.center,
//                                   maxLength: 1,
//                                   enabled: isOtpSent,
//                                   style: TextStyle(
//                                     fontSize: 18,
//                                   ),
//                                   decoration: InputDecoration(
//                                     counterText: "",
//                                     border: OutlineInputBorder(),
//                                     enabledBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color:
//                                             Color.fromARGB(142, 102, 102, 102),
//                                       ),
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                     focusedBorder: OutlineInputBorder(
//                                       borderSide: BorderSide(
//                                         color: Theme.of(context).primaryColor,
//                                       ),
//                                       borderRadius: BorderRadius.circular(8),
//                                     ),
//                                   ),
//                                   onChanged: (value) =>
//                                       _onOtpChanged(value, index),
//                                 ),
//                               ),
//                             );
//                           }),
//                         ),
//                         SizedBox(height: screenHeight * 0.02),
//                         TextButton(
//                           onPressed: () {
//                             // Resend OTP action
//                           },
//                           child: Center(
//                             child: Row(
//                               children: [
//                                 Center(
//                                   child: Text(
//                                     "OTP not received?",
//                                     style: TextStyle(
//                                       color: Color(0xFF666666),
//                                       fontSize: screenWidth * 0.04,
//                                     ),
//                                   ),
//                                 ),
//                                 Center(
//                                   child: Text(
//                                     " Resend now",
//                                     style: TextStyle(
//                                       color: isOtpSent
//                                           ? Color(0xFF5A9ECF)
//                                           : Color(0xFF666666),
//                                       fontSize: screenWidth * 0.04,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.05),
//                         Center(
//                           child: Container(
//                             height: screenHeight * 0.07,
//                             width: screenWidth * 0.9,
//                             decoration: BoxDecoration(
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black.withOpacity(0.3),
//                                   spreadRadius: 0,
//                                   blurRadius: 4,
//                                   offset: Offset(0, 4),
//                                 ),
//                               ],
//                             ),
//                             child: ElevatedButton(
//                               onPressed: _handleButtonPress,
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor: Color(0xFF5A9ECF),
//                                 padding: EdgeInsets.symmetric(
//                                   horizontal: screenWidth * 0.3,
//                                   vertical: screenHeight * 0.02,
//                                 ),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                               ),
//                               child: FittedBox(
//                                 fit: BoxFit.scaleDown,
//                                 child: Text(
//                                   isOtpSent ? "Verify Now" : "Get OTP",
//                                   style: TextStyle(
//                                     fontSize: screenWidth * 0.045,
//                                     color: Color(0xFFFCFEFF),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.075),
//                         Padding(
//                           padding: EdgeInsets.only(
//                             bottom: screenHeight * 0.03,
//                             left: screenWidth * 0.16,
//                             right: screenWidth * 0.05,
//                           ),
//                           child: Text.rich(
//                             TextSpan(
//                               text: "By registering, you agree to ",
//                               style: TextStyle(
//                                 color: Color(0xFF222222),
//                                 fontSize: screenWidth * 0.035,
//                               ),
//                               children: [
//                                 TextSpan(
//                                   text: "our terms.",
//                                   style: TextStyle(
//                                     color: Color(0xFF3C97D3),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             textAlign: TextAlign.center,
//                           ),
//                         ),
//                         SizedBox(height: screenHeight * 0.00),
//                       ],
//                     ),
//                   ),
//                   Positioned(
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.pop(context);
//                       },
//                       child: Container(
//                         height: screenHeight * 0.05,
//                         width: screenWidth * 0.08,
//                         child: IconButton(
//                           icon: Icon(Icons.arrow_back_ios_new),
//                           iconSize: 15,
//                           color: Color(0xFF666666),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           },
//                         ),
//                       ),
//                     ),
//                     left: screenWidth * 0.05,
//                     top: screenWidth * 0.05,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//=================================================================

import 'dart:convert';
import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../Credentials/Credentials_1.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final TextEditingController phoneController = TextEditingController();
  bool isPhoneEntered = false;
  bool isOtpSent = false;
  String countryCode = "+91";

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      setState(() {
        isPhoneEntered = phoneController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    phoneController.dispose();
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  bool isOtpComplete() {
    return _otpControllers.every((controller) => controller.text.isNotEmpty);
  }

  void _handleButtonPress() {
    if (!isOtpSent) {
      // Handle sending OTP
      if (phoneController.text.length == 10) {
        setState(() {
          isOtpSent = true;
        });
        // Add your OTP sending logic here
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please enter a valid 10-digit mobile number'),
          ),
        );
      }
    } else {
      // Handle OTP verification and navigation
      if (isOtpComplete()) {
        // Add your OTP verification logic here
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NEETFormPage()),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please enter the complete OTP')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCFEFF),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double screenWidth = constraints.maxWidth;
            double screenHeight = constraints.maxHeight;

            return SingleChildScrollView(
              child: Stack(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.03),
                        Center(
                          child: Container(
                            height: screenHeight * 0.30,
                            width: screenWidth * 0.9,
                            child: Image.asset(
                              'assets/4.png',
                              height: screenHeight * 0.20,
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            Text(
                              "Step in and explore\n   endless possibilities!",
                              style: TextStyle(
                                fontSize: screenWidth * 0.06,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                showCountryPicker(
                                  context: context,
                                  showPhoneCode: true,
                                  onSelect: (Country country) {
                                    setState(() {
                                      countryCode = "+${country.phoneCode}";
                                    });
                                  },
                                );
                              },
                              child: Container(
                                height: screenHeight * 0.07,
                                width: screenWidth * 0.15,
                                padding: EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(142, 102, 102, 102),
                                  ),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(countryCode,
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.045)),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.03),
                            Expanded(
                              child: Container(
                                height: screenHeight * 0.07,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Color.fromARGB(142, 102, 102, 102),
                                  ),
                                  color: Color(0xFFFFFFFF),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    controller: phoneController,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      hintText: "  Enter number",
                                      border: InputBorder.none,
                                      hintStyle: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Row(
                          children: [
                            const Text(
                              "*",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "Enter your mobile number for verification.",
                              style: TextStyle(
                                fontSize: screenWidth * 0.030,
                                color: Color(0xFF222222),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(4, (index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.025),
                              child: SizedBox(
                                width: screenWidth * 0.15,
                                child: TextFormField(
                                  controller: _otpControllers[index],
                                  focusNode: _focusNodes[index],
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  maxLength: 1,
                                  enabled: isOtpSent,
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(),
                                  ),
                                  onChanged: (value) =>
                                      _onOtpChanged(value, index),
                                ),
                              ),
                            );
                          }),
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        TextButton(
                          onPressed: () {
                            // Resend OTP action
                          },
                          child: Center(
                            child: Row(
                              children: [
                                Center(
                                  child: Text(
                                    "OTP not received?",
                                    style: TextStyle(
                                      color: Color(0xFF666666),
                                      fontSize: screenWidth * 0.04,
                                    ),
                                  ),
                                ),
                                Center(
                                  child: Text(
                                    " Resend now",
                                    style: TextStyle(
                                      color: isOtpSent
                                          ? Color(0xFF5A9ECF)
                                          : Color(0xFF666666),
                                      fontSize: screenWidth * 0.04,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Center(
                          child: Container(
                            height: screenHeight * 0.07,
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
                              onPressed: _handleButtonPress,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF5A9ECF),
                                padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.3,
                                  vertical: screenHeight * 0.02,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: FittedBox(
                                fit: BoxFit.scaleDown,
                                child: Text(
                                  isOtpSent ? "Verify Now" : "Get OTP",
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.045,
                                    color: Color(0xFFFCFEFF),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.04),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Center(
                            child: Text(
                                "By registering, you agree to our terms.",
                                style: TextStyle(fontSize: 14)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.08,
                        child: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new),
                          iconSize: 15,
                          color: Color(0xFF666666),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ),
                    left: screenWidth * 0.05,
                    top: screenWidth * 0.05,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
