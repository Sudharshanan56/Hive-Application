import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StudentDetailsPage extends StatefulWidget {
  final String userId;

  const StudentDetailsPage({Key? key, required this.userId}) : super(key: key);

  @override
  _StudentDetailsPageState createState() => _StudentDetailsPageState();
}

class _StudentDetailsPageState extends State<StudentDetailsPage> {
    @override
  void initState() {
    super.initState();
    print("Received UserId: ${widget.userId}"); // Debugging line
  }
  final TextEditingController nameController = TextEditingController();
  final TextEditingController needIdController = TextEditingController();
  final TextEditingController needScoreController = TextEditingController();

  bool isLoading = false;

  Future<void> submitStudentDetails() async {
    final String apiUrl = "http://localhost:3000/api/hiveapp/addStudent";

    // Data to send
    Map<String, dynamic> data = {
      "UserId": widget.userId, // UserId from OTP page
      "Name": nameController.text,
      "NeedId": needIdController.text,
      "NeedScore": int.tryParse(needScoreController.text) ?? 0,
    };

    setState(() {
      isLoading = true;
    });

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(data),
      );

      if (response.statusCode == 201||response.statusCode==200) {
        // Successfully added
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Student Details Saved Successfully!")),
        );
      } else {
        // Error response
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Failed to save details")),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $error")),
      );
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Details")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Name"),
            ),
            TextField(
              controller: needIdController,
              decoration: InputDecoration(labelText: "Need ID"),
            ),
            TextField(
              controller: needScoreController,
              decoration: InputDecoration(labelText: "Need Score"),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            isLoading
                ? CircularProgressIndicator()
                : ElevatedButton(
                    onPressed: submitStudentDetails,
                    child: Text("Submit"),
                  ),
          ],
        ),
      ),
    );
  }
}
