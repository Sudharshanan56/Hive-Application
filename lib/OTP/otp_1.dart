// // import 'package:flutter/material.dart';
// //
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       home: OTPVerificationScreen(),
// //     );
// //   }
// // }
// //
// // class OTPVerificationScreen extends StatelessWidget {
// //   TextEditingController n=new TextEditingController();
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.white,
// //       body: Padding(
// //         padding: const EdgeInsets.symmetric(horizontal: 20.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             const SizedBox(height: 50),
// //             Center(
// //               child: Container(
// //                 height: 325,
// //                 width: 400,
// //                 child: Image.asset(
// //                   'assets/4.png', // Replace with your illustration asset
// //                   height: 200,
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             const Text(
// //               "Step in and explore\nendless possibilities!",
// //               style: TextStyle(
// //                 fontSize: 22,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.black,
// //               ),
// //               textAlign: TextAlign.center,
// //             ),
// //             const SizedBox(height: 35),
// //             Row(
// //               children: [
// //                 Container(
// //                   height: 50,
// //                   width: 50,
// //                   decoration: BoxDecoration(
// //                     border: Border.all()
// //                   ),
// //                   child:  Center(
// //                     child: Text(
// //                       '+91',
// //                       style: TextStyle(fontSize: 18, ),
// //                     ),
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: const EdgeInsets.only(left: 18),
// //                   child: Container(
// //                     height: 50,
// //                     width: 300,
// //                     child:  TextField(
// //                       controller: n,
// //                       keyboardType: TextInputType.phone,
// //                       decoration: InputDecoration(
// //                         prefixIcon: Padding(
// //                           padding: EdgeInsets.only(top: 0, left: 0),
// //                           // child: Text(
// //                           //   '+91',
// //                           //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
// //                           // ),
// //                         ),
// //                        // prefixIconConstraints: BoxConstraints(minWidth: 50),
// //                         hintText: "Enter number",
// //                         border: OutlineInputBorder(),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //             const SizedBox(height: 20),
// //             Row(
// //               children: [
// //                 const Text(
// //                   "*",style: TextStyle(
// //                   fontSize: 14,
// //                   color: Colors.red,
// //                 ),),
// //                       Text("Enter your mobile number for verification.",style: TextStyle(
// //                         fontSize: 14,
// //                         color: Colors.black,
// //                       ),),
// //               ],
// //             ),
// //
// //
// //             const SizedBox(height: 30),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //               children: List.generate(
// //                 4,
// //                     (index) => Container(
// //                   width: 50,
// //                   height: 60,
// //                   alignment: Alignment.center,
// //                   decoration: BoxDecoration(
// //                     border: Border.all(color: Colors.black, width: 1),
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                   child: TextField(
// //                     textAlign: TextAlign.center,
// //                     keyboardType: TextInputType.number,
// //                     maxLength: 1,
// //                     decoration: const InputDecoration(
// //                       border: InputBorder.none,
// //                       counterText: '',
// //                       hintText: "0"
// //                     ),
// //                   ),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             TextButton(
// //               onPressed: () {
// //                 // Resend OTP action
// //               },
// //               child: Center(
// //                 child: const Text(
// //                   "OTP not received? Resend now",
// //                   style: TextStyle(color: Colors.black),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 40),
// //             Center(
// //               child: ElevatedButton(
// //                 onPressed: () {
// //                   // Get OTP action
// //                 },
// //                 style: ElevatedButton.styleFrom(
// //                   backgroundColor: Colors.blue,
// //                   padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(8),
// //                   ),
// //                 ),
// //                 child:  Text(
// //                   "Get OTP",
// //                   style: TextStyle(fontSize: 18, color: Colors.white),
// //                 ),
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             const Center(
// //               child: Text(
// //                 "By registering, you agree to our terms.",
// //                 style: TextStyle(fontSize: 14, color: Colors.grey),
// //               ),
// //             ),
// //             const SizedBox(height: 19),
// //
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import '../Credentials/Credentials_1.dart';

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
//     super.dispose();
//   }

//   void _onOtpChanged(String value, int index) {
//     if (value.isNotEmpty && index < 3) {
//       FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
//     } else if (value.isEmpty && index > 0) {
//       FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final screenHeight = MediaQuery.of(context).size.height;

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           leading: IconButton(
//             icon: Icon(Icons.arrow_back_ios_new),
//             iconSize: 15,
//             color: Colors.grey.shade800,
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: screenHeight * 0.03),
//                 Center(
//                   child: Container(
//                     height: screenHeight * 0.3,
//                     width: screenWidth * 0.9,
//                     // decoration: BoxDecoration(
//                     //   border: Border.all(color: Colors.grey),
//                     //   // borderRadius: BorderRadius.circular(8),
//                     // ),
//                     child: Image.asset(
//                       'assets/4.png',
//                       height: screenHeight * 0.20,
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: screenHeight * 0.02),
//                 Text(
//                   "Step in and explore\n   endless possibilities!",
//                   style: TextStyle(
//                     fontSize: screenWidth * 0.060,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(height: screenHeight * 0.02),
//                 Row(
//                   children: [
//                     Container(
//                       height: screenHeight * 0.07,
//                       width: screenWidth * 0.15,
//                       decoration: BoxDecoration(
//                         border: Border.all(color: Colors.grey),
//                         borderRadius: BorderRadius.circular(8),
//                       ),
//                       child: Center(
//                         child: Text(
//                           '+91',
//                           style: TextStyle(fontSize: screenWidth * 0.045),
//                         ),
//                       ),
//                     ),
//                     SizedBox(width: screenWidth * 0.05),
//                     Expanded(
//                       child: Container(
//                         height: screenHeight * 0.07,
//                         decoration: BoxDecoration(
//                           border: Border.all(color: Colors.grey),
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: TextField(
//                             controller: phoneController,
//                             keyboardType: TextInputType.number,
//                             decoration: InputDecoration(
//                               hintText: "  Enter number",
//                               border: InputBorder.none,
//                               //border: const OutlineInputBorder(c),
//                               hintStyle:
//                                   TextStyle(fontSize: screenWidth * 0.04),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: screenHeight * 0.02),
//                 Row(
//                   children: [
//                     const Text(
//                       "*",
//                       style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.red,
//                       ),
//                     ),
//                     Text(
//                       "Enter your mobile number for verification.",
//                       style: TextStyle(
//                         fontSize: screenWidth * 0.035,
//                         color: Colors.black,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SizedBox(height: screenHeight * 0.03),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: List.generate(4, (index) {
//                     return SizedBox(
//                       width: 50,
//                       child: TextFormField(
//                         controller: _otpControllers[index],
//                         focusNode: _focusNodes[index],
//                         keyboardType: TextInputType.number,
//                         textAlign: TextAlign.center,
//                         maxLength: 1,
//                         style: TextStyle(
//                             fontSize: 18, fontWeight: FontWeight.bold),
//                         decoration: InputDecoration(
//                           counterText: "",
//                           border: OutlineInputBorder(),
//                           enabledBorder: OutlineInputBorder(
//                             borderSide: BorderSide(color: Colors.grey),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           focusedBorder: OutlineInputBorder(
//                             borderSide: BorderSide(
//                                 color: Theme.of(context).primaryColor),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                         ),
//                         onChanged: (value) => _onOtpChanged(value, index),
//                       ),
//                     );
//                   }),
//                 ),
//                 SizedBox(height: screenHeight * 0.02),
//                 TextButton(
//                   onPressed: () {
//                     // Resend OTP action
//                   },
//                   child: Center(
//                     child: Text(
//                       "OTP not received? Resend now",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: screenWidth * 0.04,
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: screenHeight * 0.05),
//                 Center(
//                   child: Container(
//                     height: screenHeight * 0.07,
//                     width: screenWidth * 0.9,
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
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => NEETFormPage()),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF5A9ECF),
//                         padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.3,
//                           vertical: screenHeight * 0.02,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: Text(
//                         _otpControllers.isEmpty ? "Get OTP" : "Verify Now",
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.045,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(height: screenHeight * 0.02),
//                 Padding(
//                   padding: EdgeInsets.only(
//                       bottom: screenHeight * 0.05,
//                       left: screenWidth * 0.10,
//                       right: screenWidth * 0.05),
//                   child: Text.rich(
//                     TextSpan(
//                       text: "By registering, you agree to ",
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontSize: screenWidth * 0.035, // Responsive font size
//                         fontWeight: FontWeight.bold,
//                       ),
//                       children: const [
//                         TextSpan(
//                           text: "our terms.",
//                           style: TextStyle(
//                             color: Color(0xFF3C97D3),
//                           ),
//                         ),
//                       ],
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 SizedBox(height: screenHeight * 0.00),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
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
              content: Text('Please enter a valid 10-digit mobile number')),
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
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   leading: IconButton(
        //     icon: Icon(Icons.arrow_back_ios_new),
        //     iconSize: 15,
        //     color: Colors.grey.shade800,
        //     onPressed: () {
        //       Navigator.pop(context);
        //     },
        //   ),
        // ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: screenHeight * 0.05,
                  width: screenWidth * 0.08,
                  //decoration: BoxDecoration(border: Border.all()),
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_ios_new),
                    iconSize: 15,
                    color: Colors.grey.shade800,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.03),
                    Center(
                      child: Container(
                        height: screenHeight * 0.28,
                        width: screenWidth * 0.9,
                        child: Image.asset(
                          'assets/4.png',
                          height: screenHeight * 0.20,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Step in and explore\n   endless possibilities!",
                      style: TextStyle(
                        fontSize: screenWidth * 0.060,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Row(
                      children: [
                        Container(
                          height: screenHeight * 0.07,
                          width: screenWidth * 0.15,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              '+91',
                              style: TextStyle(fontSize: screenWidth * 0.045),
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.05),
                        Expanded(
                          child: Container(
                            height: screenHeight * 0.07,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: phoneController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "  Enter number",
                                  border: InputBorder.none,
                                  hintStyle:
                                      TextStyle(fontSize: screenWidth * 0.04),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
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
                            fontSize: screenWidth * 0.035,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: List.generate(4, (index) {
                        return SizedBox(
                          width: 50,
                          child: TextFormField(
                            controller: _otpControllers[index],
                            focusNode: _focusNodes[index],
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            maxLength: 1,
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            decoration: InputDecoration(
                              counterText: "",
                              border: OutlineInputBorder(),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Theme.of(context).primaryColor),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            onChanged: (value) => _onOtpChanged(value, index),
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    TextButton(
                      onPressed: () {
                        // Resend OTP action
                      },
                      child: Center(
                        child: Text(
                          "OTP not received? Resend now",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                          ),
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
                          child: Text(
                            isOtpSent ? "Verify Now" : "Get OTP",
                            style: TextStyle(
                              fontSize: screenWidth * 0.045,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Padding(
                      padding: EdgeInsets.only(
                          bottom: screenHeight * 0.05,
                          left: screenWidth * 0.10,
                          right: screenWidth * 0.05),
                      child: Text.rich(
                        TextSpan(
                          text: "By registering, you agree to ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.035,
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
                    SizedBox(height: screenHeight * 0.00),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
