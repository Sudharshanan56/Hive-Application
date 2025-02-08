import 'package:flutter/material.dart';
import 'api_service.dart'; // Import the API service file

class MobileNumberScreen extends StatefulWidget {
  @override
  _MobileNumberScreenState createState() => _MobileNumberScreenState();
}

class _MobileNumberScreenState extends State<MobileNumberScreen> {
  final TextEditingController _mobileController = TextEditingController();
  bool isLoading = false;
  String resultMessage = "";

  void _submitMobileNumber() async {
    String mobileNumber = _mobileController.text.trim();

    if (mobileNumber.isEmpty || mobileNumber.length != 10) {
      setState(() {
        resultMessage = "Please enter a valid 10-digit mobile number";
      });
      return;
    }

    setState(() {
      isLoading = true;
      resultMessage = "";
    });

    final result = await ApiService.checkOrSaveMobileNumber(mobileNumber);

    setState(() {
      isLoading = false;
      if (result["status"] == "exists") {
        resultMessage = "User exists: ${result['data']}";
      } else if (result["status"] == "saved") {
        resultMessage = result["message"];
      } else {
        resultMessage = result["message"];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Check or Save Mobile Number")),
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
                    onPressed: _submitMobileNumber,
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
