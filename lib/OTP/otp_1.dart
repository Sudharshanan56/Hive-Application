// import 'package:flutter/material.dart';
//
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: OTPVerificationScreen(),
//     );
//   }
// }
//
// class OTPVerificationScreen extends StatelessWidget {
//   TextEditingController n=new TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 50),
//             Center(
//               child: Container(
//                 height: 325,
//                 width: 400,
//                 child: Image.asset(
//                   'assets/4.png', // Replace with your illustration asset
//                   height: 200,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               "Step in and explore\nendless possibilities!",
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 35),
//             Row(
//               children: [
//                 Container(
//                   height: 50,
//                   width: 50,
//                   decoration: BoxDecoration(
//                     border: Border.all()
//                   ),
//                   child:  Center(
//                     child: Text(
//                       '+91',
//                       style: TextStyle(fontSize: 18, ),
//                     ),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(left: 18),
//                   child: Container(
//                     height: 50,
//                     width: 300,
//                     child:  TextField(
//                       controller: n,
//                       keyboardType: TextInputType.phone,
//                       decoration: InputDecoration(
//                         prefixIcon: Padding(
//                           padding: EdgeInsets.only(top: 0, left: 0),
//                           // child: Text(
//                           //   '+91',
//                           //   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                           // ),
//                         ),
//                        // prefixIconConstraints: BoxConstraints(minWidth: 50),
//                         hintText: "Enter number",
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 20),
//             Row(
//               children: [
//                 const Text(
//                   "*",style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.red,
//                 ),),
//                       Text("Enter your mobile number for verification.",style: TextStyle(
//                         fontSize: 14,
//                         color: Colors.black,
//                       ),),
//               ],
//             ),
//
//
//             const SizedBox(height: 30),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: List.generate(
//                 4,
//                     (index) => Container(
//                   width: 50,
//                   height: 60,
//                   alignment: Alignment.center,
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.black, width: 1),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   child: TextField(
//                     textAlign: TextAlign.center,
//                     keyboardType: TextInputType.number,
//                     maxLength: 1,
//                     decoration: const InputDecoration(
//                       border: InputBorder.none,
//                       counterText: '',
//                       hintText: "0"
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             TextButton(
//               onPressed: () {
//                 // Resend OTP action
//               },
//               child: Center(
//                 child: const Text(
//                   "OTP not received? Resend now",
//                   style: TextStyle(color: Colors.black),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 40),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Get OTP action
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child:  Text(
//                   "Get OTP",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Center(
//               child: Text(
//                 "By registering, you agree to our terms.",
//                 style: TextStyle(fontSize: 14, color: Colors.grey),
//               ),
//             ),
//             const SizedBox(height: 19),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import '../Credentials/Credentials_1.dart';

  class OTPVerificationScreen extends StatefulWidget {
  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final TextEditingController phoneController = TextEditingController();
  bool isPhoneEntered = false;

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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: Container(
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.9,
                  child: Image.asset(
                    'assets/4.png',
                    height: screenHeight * 0.25,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                "Step in and explore\nendless possibilities!",
                style: TextStyle(
                  fontSize: screenWidth * 0.055,
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
                      child: TextField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: "Enter number",
                          border: OutlineInputBorder(),
                          hintStyle: TextStyle(fontSize: screenWidth * 0.04),
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
                children: List.generate(
                  4,
                      (index) => Container(
                    width: screenWidth * 0.15,
                    height: screenHeight * 0.08,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: TextStyle(fontSize: screenWidth * 0.045),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintText: "0",
                      ),
                    ),
                  ),
                ),
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
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NEETFormPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.3,
                        vertical: screenHeight * 0.02,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text(
                      "Get OTP",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              Center(
                child: Text(
                  "By registering, you agree to our terms.",
                  style: TextStyle(
                    fontSize: screenWidth * 0.035,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
            ],
          ),
        ),
      ),
    );
  }
}
