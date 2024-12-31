import 'package:flutter/material.dart';

import '../OTP/otp_1.dart';



class LoginSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions:[ Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(
            Icons.shield_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),]
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 60),
            Center(
              child: Container(
                height: 450,
                width: 400,
                child: Image.asset(
                  'assets/6.png', // Replace with your illustration asset
                  height: 250,
                ),
              ),
            ),
            const SizedBox(height: 120),
            Container(
              height: 55,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>OTPVerificationScreen()));
                  // Navigate to User Login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "User Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "or",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Container(
              height: 55,
              width: 400,
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to Universities Login
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  "Universities Login",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
            const Spacer(),
            Text.rich(
              TextSpan(
                text: "By registering, you agree to ",
                style: const TextStyle(color: Colors.black54, fontSize: 14,fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                    text: "our terms.",
                    style: const TextStyle(
                      color: Colors.lightBlueAccent,
                      // decoration: TextDecoration.underline,
                    ),
                    // Add navigation to terms here
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
