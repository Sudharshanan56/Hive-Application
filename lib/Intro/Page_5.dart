// import 'package:flutter/material.dart';
//
// import '../OTP/otp_1.dart';
//
//
//
// class LoginSelectionScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions:[ Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Icon(
//             Icons.shield_outlined,
//             color: Colors.black,
//             size: 30,
//           ),
//         ),]
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 20.0),
//         child: Column(
//           children: [
//             const SizedBox(height: 60),
//             Center(
//               child: Container(
//                 height: 450,
//                 width: 400,
//                 child: Image.asset(
//                   'assets/6.png', // Replace with your illustration asset
//                   height: 250,
//                 ),
//               ),
//             ),
//             const SizedBox(height: 120),
//             Container(
//               height: 55,
//               width: 400,
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPVerificationScreen()));
//                   // Navigate to User Login
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.blue,
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text(
//                   "User Login",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
//             const Text(
//               "or",
//               style: TextStyle(fontSize: 16, color: Colors.grey),
//             ),
//             const SizedBox(height: 10),
//             Container(
//               height: 55,
//               width: 400,
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Navigate to Universities Login
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.black,
//                   padding: const EdgeInsets.symmetric(vertical: 15),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text(
//                   "Universities Login",
//                   style: TextStyle(fontSize: 18, color: Colors.white),
//                 ),
//               ),
//             ),
//             const Spacer(),
//             Text.rich(
//               TextSpan(
//                 text: "By registering, you agree to ",
//                 style: const TextStyle(color: Colors.black54, fontSize: 14,fontWeight: FontWeight.bold),
//                 children: [
//                   TextSpan(
//                     text: "our terms.",
//                     style: const TextStyle(
//                       color: Colors.lightBlueAccent,
//                       // decoration: TextDecoration.underline,
//                     ),
//                     // Add navigation to terms here
//                   ),
//                 ],
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 20),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../OTP/otp_1.dart';

class LoginSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.01),
            child: Icon(
              Icons.shield_outlined,
              color: Colors.black,
              size: screenWidth * 0.07,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: Column(
          children: [
            SizedBox(height: screenHeight * 0.08),
            Center(
              child: Container(
                height: screenHeight * 0.4,
                width: screenWidth * 0.8,
                child: Image.asset(
                  'assets/6.png', // Replace with your illustration asset
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.1),
            Container(
              height: screenHeight * 0.07,
              width: screenWidth * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => OTPVerificationScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "User Login",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            Text(
              "or",
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: screenHeight * 0.015),
            Container(
              height: screenHeight * 0.07,
              width: screenWidth * 0.9,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Universities Login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  "Universities Login",
                  style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Spacer(),
            Text.rich(
              TextSpan(
                text: "By registering, you agree to ",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: "our terms.",
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.02),
          ],
        ),
      ),
    );
  }
}
