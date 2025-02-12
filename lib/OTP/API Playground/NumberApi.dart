import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class GetOtpScreen extends StatefulWidget {
  @override
  _GetOtpScreenState createState() => _GetOtpScreenState();
}

class _GetOtpScreenState extends State<GetOtpScreen> {
  final TextEditingController _mobileController = TextEditingController();
  bool isLoading = false;

  Future<void> getOrCreateUser() async {
    final String mobileNumber = _mobileController.text.trim();
    if (mobileNumber.isEmpty || mobileNumber.length != 10) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid 10-digit mobile number')),
      );
      return;
    }

    setState(() {
      isLoading = true;
    });

    final Uri url = Uri.parse('http://localhost:3000/api/hiveapp/getOrCreateUser?userId=YG777&mobileNumber=$mobileNumber');
    try {
      final response = await http.get(url);
      final responseData = json.decode(response.body);

      if (response.statusCode == 200 && responseData['message'] == "User retrieved or created successfully") {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Mobile number saved successfully')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to save mobile number')),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $error')),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get OTP')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _mobileController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Enter Mobile Number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isLoading ? null : getOrCreateUser,
              child: isLoading
                  ? CircularProgressIndicator(color: Colors.white)
                  : Text('Get OTP'),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: GetOtpScreen(),
  ));
}
