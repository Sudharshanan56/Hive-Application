import 'dart:convert';

import 'package:flutter/material.dart';
import '../Credentials/Credentials_1.dart';
import 'package:http/http.dart' as http;

import 'API Playground/Credentials_Api.dart';

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

  bool x = false;

  // void _handleButtonPress() async {
  //   if (!isOtpSent) {
  //     // Handle sending OTP
  //     if (phoneController.text.length == 10) {
  //       setState(() {
  //         isOtpSent = true;
  //         x = true;
  //       });
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(
  //             content: Text('Please enter a valid 10-digit mobile number')),
  //       );
  //     }
  //   } else {
  //     // Handle OTP verification
  //     if (isOtpComplete()) {
  //       // Fetch user data before navigating
  //       await fetchUserData(phoneController.text, phoneController.text);

  //       if (userId.isNotEmpty) {
  //         print(userId);
  //         // Navigate after userId is set
  //         Navigator.push(
  //           context,
  //           MaterialPageRoute(
  //             builder: (context) => NEETFormPage(),
  //           ),
  //         );
  //       } else {
  //         ScaffoldMessenger.of(context).showSnackBar(
  //           SnackBar(content: Text('Failed to retrieve user ID. Try again.')),
  //         );
  //       }
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text('Please enter the complete OTP')),
  //       );
  //     }
  //   }
  // }

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

  String userId = "";
  String mobileNumber = "";
  // Future<void> fetchUserData(String userId, String mobileNumber) async {
  //   final String apiUrl =
  //       "http://localhost:3000/api/hiveapp/getOrCreateUser?userId=$userId&mobileNumber=$mobileNumber";

  //   try {
  //     final response = await http.get(Uri.parse(apiUrl));

  //     print("Response Code: ${response.statusCode}");
  //     print("Response Body: ${response.body}");

  //     if (response.statusCode == 200) {
  //       var data = json.decode(response.body);

  //       print("Decoded Data: $data"); // Debugging output

  //       setState(() {
  //         this.userId = data['userId']?.toString() ?? "No ID";
  //         this.mobileNumber = data['mobileNumber']?.toString() ?? "No Mobile";
  //       });

  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text("User Data Retrieved: $userId")),
  //       );
  //     } else {
  //       ScaffoldMessenger.of(context).showSnackBar(
  //         SnackBar(content: Text("Failed to fetch user data")),
  //       );
  //     }
  //   } catch (e) {
  //     print("Error: $e");
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(content: Text("An error occurred")),
  //     );
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCFEFF),
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
              Stack(
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
                            height: screenHeight * 0.28,
                            width: screenWidth * 0.9,
                            // decoration: BoxDecoration(border: Border.all()),
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
                            color: Color(0xFF111111),
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
                                border: Border.all(
                                    color: Color.fromARGB(142, 102, 102, 102)),
                                color: Color(0xFFFFFFFF),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Center(
                                child: Text(
                                  '+91',
                                  style:
                                      TextStyle(fontSize: screenWidth * 0.045),
                                ),
                              ),
                            ),
                            SizedBox(width: screenWidth * 0.03),
                            Expanded(
                              child: Container(
                                height: screenHeight * 0.07,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color:
                                          Color.fromARGB(142, 102, 102, 102)),
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
                                          fontSize: screenWidth * 0.04),
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
                                fontSize: screenWidth * 0.030,
                                color: Color(0xFF222222),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenHeight * 0.03),
                        Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: List.generate(4, (index) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: screenWidth * 0.035),
                              child: Container(
                                height: screenHeight * 0.07,
                                width: screenWidth * 0.155,
                                child: TextFormField(
                                  controller: _otpControllers[index],
                                  focusNode: _focusNodes[index],
                                  keyboardType: TextInputType.number,
                                  textAlign: TextAlign.center,
                                  maxLength: 1,
                                  enabled: isOtpSent,
                                  style: TextStyle(
                                    fontSize: 18,
                                    // fontWeight: FontWeight.bold
                                  ),
                                  decoration: InputDecoration(
                                    counterText: "",
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              142, 102, 102, 102)),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Theme.of(context).primaryColor),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  onChanged: (value) =>
                                      _onOtpChanged(value, index),
                                ),
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
                                )
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
                              onPressed: () {
                                _handleButtonPress();
                                // fetchUserData(
                                //     phoneController.text, phoneController.text);
                              },
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
                                  color: Color(0xFFFCFEFF),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.075),
                        Padding(
                          padding: EdgeInsets.only(
                              bottom: screenHeight * 0.03,
                              left: screenWidth * 0.16,
                              right: screenWidth * 0.05),
                          child: Text.rich(
                            TextSpan(
                              text: "By registering, you agree to ",
                              style: TextStyle(
                                color: Color(0xFF222222),
                                fontSize: screenWidth * 0.035,
                                // fontWeight: FontWeight.bold,
                              ),
                              children: [
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
                  Positioned(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: screenHeight * 0.05,
                        width: screenWidth * 0.08,
                        //decoration: BoxDecoration(border: Border.all()),
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
            ],
          ),
        ),
      ),
    );
  }
}
