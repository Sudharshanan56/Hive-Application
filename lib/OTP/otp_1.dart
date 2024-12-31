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

import '../Details/Details.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OTPVerificationScreen(),
    );
  }
}

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
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 50),
            Center(
              child: Container(
                height: 325,
                width: 400,
                child: Image.asset(
                  'assets/4.png', // Replace with your illustration asset
                  height: 200,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Step in and explore\nendless possibilities!",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 35),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Text(
                      '+91',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 18),
                  child: Container(
                    height: 50,
                    width: 300,
                    child: TextField(
                      controller: phoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: "Enter number",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
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
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                4,
                    (index) => Container(
                  width: 50,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: TextField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    maxLength: 1,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      counterText: '',
                      hintText: "0",
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                // Resend OTP action
              },
              child: Center(
                child: const Text(
                  "OTP not received? Resend now",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ),
            const SizedBox(height: 40),
            // Center(
            //   child: Container(
            //     height: 70,
            //     width: 400,
            //     child: ElevatedButton(
            //       onPressed: () {
            //         // Handle Get OTP or Verify action
            //         if (isPhoneEntered) {
            //           // Perform Verify Now action
            //         } else {
            //           // Perform Get OTP action
            //         }
            //       },
            //       style: ElevatedButton.styleFrom(
            //         backgroundColor: Colors.blue,
            //         padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(8),
            //         ),
            //       ),
            //       child: Row(
            //         children: [
            //           Text(
            //             isPhoneEntered ? "Verify Now" : "Get OTP",
            //             style: TextStyle(fontSize: 18, color: Colors.white),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // NEETDetailsScreen();//
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NEETDetailsScreen()));
                  // Handle Get OTP or Verify action
                  if (isPhoneEntered) {
                    // Perform Verify Now action
                  } else {
                    // Perform Get OTP action
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(horizontal: 140, vertical: 15), // Reduced padding
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  isPhoneEntered ? "Verify Now" : "Get OTP",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Center(
              child: Text(
                "By registering, you agree to our terms.",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
    );
  }
}