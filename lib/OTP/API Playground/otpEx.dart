import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class OtpVerificationPage1 extends StatefulWidget {
  @override
  _OtpVerificationPage1State createState() => _OtpVerificationPage1State();
}

class _OtpVerificationPage1State extends State<OtpVerificationPage1> {
  TextEditingController phoneController = TextEditingController();
  List<TextEditingController> _otpControllers =
      List.generate(4, (index) => TextEditingController());
  List<FocusNode> _focusNodes = List.generate(4, (index) => FocusNode());

  String userId = "";
  String mobileNumber = "";

  // Future<void> fetchUserData(String userId, String mobileNumber) async {
  //   final String apiUrl =
  //       "http://localhost:3000/api/hiveapp/getOrCreateUser?userId=$userId&mobileNumber=$mobileNumber";

  //   try {
  //     final response = await http.get(Uri.parse(apiUrl));

  //     if (response.statusCode == 200) {
  //       var data = json.decode(response.body);
  //       setState(() {
  //         this.userId = data['userId'].toString();
  //         this.mobileNumber = data['mobileNumber'].toString();
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

  void _onOtpChanged(String value, int index) {
    if (value.length == 1 && index < _otpControllers.length - 1) {
      FocusScope.of(context).nextFocus();
    }
  }

  Future<void> fetchUserData(String userId, String mobileNumber) async {
    final String apiUrl =
        "http://localhost:3000/api/hiveapp/getOrCreateUser?userId=$userId&mobileNumber=$mobileNumber";

    try {
      final response = await http.get(Uri.parse(apiUrl));

      print("Response Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      if (response.statusCode == 200) {
        var data = json.decode(response.body);

        print("Decoded Data: $data"); // Debugging output

        setState(() {
          this.userId = data['userId']?.toString() ?? "No ID";
          this.mobileNumber = data['mobileNumber']?.toString() ?? "No Mobile";
        });

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("User Data Retrieved: $userId")),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to fetch user data")),
        );
      }
    } catch (e) {
      print("Error: $e");
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("An error occurred")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(title: Text("OTP Verification")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: phoneController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: "Enter Mobile Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                fetchUserData(phoneController.text, phoneController.text);
              },
              child: Text("Verify & Fetch Data"),
            ),
            SizedBox(height: 16),
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    decoration: InputDecoration(
                      counterText: "",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) => _onOtpChanged(value, index),
                  ),
                );
              }),
            ),
            SizedBox(height: 20),
            Text("User ID: $userId"),
            Text("Mobile Number: $mobileNumber"),
          ],
        ),
      ),
    );
  }
}
