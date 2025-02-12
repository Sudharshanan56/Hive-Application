import 'package:flutter/material.dart';
import 'api_service.dart'; // Import API service

class SubmitScreen extends StatefulWidget {
  @override
  _SubmitScreenState createState() => _SubmitScreenState();
}

class _SubmitScreenState extends State<SubmitScreen> {
  final TextEditingController _mobileController = TextEditingController();
  String resultMessage = "";
  bool isLoading = false;

  void _submitNumber() async {
    String mobile = _mobileController.text.trim();
    String userId = "YG234"; // User ID can be dynamically generated

    if (mobile.isEmpty || mobile.length != 10) {
      setState(() => resultMessage = "Enter a valid 10-digit number");
      return;
    }

    setState(() {
      isLoading = true;
      resultMessage = "";
    });

    final result = await ApiService.postMobileNumber(userId, mobile);

    setState(() {
      isLoading = false;
      if (result["status"] == "success") {
        resultMessage = "User created! UserID: ${result["user"]["UserId"]}";
      } else {
        resultMessage = "Error: ${result["message"]}";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Submit Mobile Number")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Enter Mobile Number",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: _submitNumber,
                    child: Text("Submit"),
                  ),
            SizedBox(height: 20),
            Text(
              resultMessage,
              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
