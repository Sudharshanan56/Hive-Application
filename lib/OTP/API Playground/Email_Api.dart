// // // import 'package:flutter/material.dart';
// // // import 'package:http/http.dart' as http;
// // // import 'dart:convert';

// // // class EmailPage extends StatefulWidget {
// // //   final String userId;
// // //   const EmailPage({Key? key, required this.userId}) : super(key: key);

// // //   @override
// // //   _EmailPageState createState() => _EmailPageState();
// // // }

// // // class _EmailPageState extends State<EmailPage> {
// // //   final TextEditingController _emailController = TextEditingController();
// // //   bool _isLoading = false;

// // //   Future<void> submitEmail() async {
// // //     final String apiUrl = "http://localhost:3000/api/hiveapp/addEmail";

// // //     setState(() {
// // //       _isLoading = true;
// // //     });

// // //     final response = await http.post(
// // //       Uri.parse(apiUrl),
// // //       headers: {"Content-Type": "application/json"},
// // //       body: jsonEncode({
// // //         "UserId": widget.userId, // Get UserId from the constructor
// // //         "email": _emailController.text.trim(),
// // //       }),
// // //     );

// // //     setState(() {
// // //       _isLoading = false;
// // //     });

// // //     if (response.statusCode == 200 || response.statusCode == 201) {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         const SnackBar(content: Text("Email added successfully")),
// // //       );
// // //       Navigator.pop(context); // Go back to previous screen
// // //     } else {
// // //       ScaffoldMessenger.of(context).showSnackBar(
// // //         SnackBar(content: Text("Failed: ${response.body}")),
// // //       );
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: const Text("Add Email")),
// // //       body: Padding(
// // //         padding: const EdgeInsets.all(16.0),
// // //         child: Column(
// // //           children: [
// // //             TextField(
// // //               controller: _emailController,
// // //               keyboardType: TextInputType.emailAddress,
// // //               decoration: const InputDecoration(labelText: "Enter your email"),
// // //             ),
// // //             const SizedBox(height: 20),
// // //             _isLoading
// // //                 ? const CircularProgressIndicator()
// // //                 : ElevatedButton(
// // //                     onPressed: submitEmail,
// // //                     child: const Text("Submit"),
// // //                   ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // EmailPage.dart
// // import 'package:flutter/material.dart';
// // import 'package:http/http.dart' as http;
// // import 'dart:convert';

// // class EmailPage extends StatefulWidget {
// //   final String userId;

// //   const EmailPage({Key? key, required this.userId}) : super(key: key);

// //   @override
// //   _EmailPageState createState() => _EmailPageState();
// // }

// // class _EmailPageState extends State<EmailPage> {
// //   final _formKey = GlobalKey<FormState>();
// //   final TextEditingController _emailController = TextEditingController();

// //   Future<void> _submitEmail() async {
// //     if (_formKey.currentState!.validate()) {
// //       final email = _emailController.text;

// //       // API URL
// //       final url = Uri.parse('http://localhost:3000/api/hiveapp/addEmail');

// //       // Prepare the data to send
// //       final Map<String, String> data = {
// //         'UserId': widget.userId,
// //         'email': email,
// //       };

// //       try {
// //         // Send POST request
// //         final response = await http.post(
// //           url,
// //           headers: {'Content-Type': 'application/json'},
// //           body: jsonEncode(data),
// //         );

// //         if (response.statusCode == 200) {
// //           // Success
// //           ScaffoldMessenger.of(context).showSnackBar(
// //             SnackBar(content: Text('Email saved successfully!')),
// //           );
// //         } else {
// //           // Error
// //           ScaffoldMessenger.of(context).showSnackBar(
// //             SnackBar(content: Text('Failed to save email. Please try again.')),
// //           );
// //         }
// //       } catch (e) {
// //         // Handle exceptions
// //         ScaffoldMessenger.of(context).showSnackBar(
// //           SnackBar(content: Text('An error occurred: $e')),
// //         );
// //       }
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Add Email'),
// //       ),
// //       body: Padding(
// //         padding: const EdgeInsets.all(16.0),
// //         child: Form(
// //           key: _formKey,
// //           child: Column(
// //             children: [
// //               TextFormField(
// //                 controller: _emailController,
// //                 decoration: InputDecoration(labelText: 'Email'),
// //                 validator: (value) {
// //                   if (value == null || value.isEmpty) {
// //                     return 'Please enter an email';
// //                   }

// //                   return null;
// //                 },
// //               ),
// //               SizedBox(height: 20),
// //               ElevatedButton(
// //                 onPressed: _submitEmail,
// //                 child: Text('Submit'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class EmailPage extends StatefulWidget {
//   final String userId;

//   const EmailPage({Key? key, required this.userId}) : super(key: key);

//   @override
//   _EmailPageState createState() => _EmailPageState();
// }

// class _EmailPageState extends State<EmailPage> {
//   final _formKey = GlobalKey<FormState>();
//   final TextEditingController _emailController = TextEditingController();

//   Future<void> _submitEmail() async {
//     if (_formKey.currentState!.validate()) {
//       final email = _emailController.text;

//       // API URL
//       final url = Uri.parse('http://localhost:3000/api/hiveapp/addEmail');

//       // Prepare the data to send
//       final Map<String, String> data = {
//         'userId': widget.userId,
//         'email': email,
//       };

//       try {
//         final response = await http.post(
//           url,
//           headers: {'Content-Type': 'application/json'},
//           body: jsonEncode(data),
//         );

//         if (response.statusCode == 200) {
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Email saved successfully!')),
//           );
//         } else {
//           final errorData = jsonDecode(response.body);
//           ScaffoldMessenger.of(context).showSnackBar(
//             SnackBar(content: Text('Error: ${errorData['message']}')),
//           );
//         }
//       } catch (e) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('An error occurred: $e')),
//         );
//       }
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Add Email'),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             TextFormField(
//               controller: _emailController,
//               decoration: InputDecoration(labelText: 'Email'),
//               validator: (value) {
//                 if (value == null || value.isEmpty) {
//                   return 'Please enter an email';
//                 }
//                 if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
//                     .hasMatch(value)) {
//                   return 'Please enter a valid email';
//                 }
//                 return null;
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _submitEmail,
//               child: Text('Submit'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EmailPage extends StatefulWidget {
  final String userId;

  const EmailPage({Key? key, required this.userId}) : super(key: key);

  @override
  _EmailPageState createState() => _EmailPageState();
}

class _EmailPageState extends State<EmailPage> {
  final TextEditingController _emailController = TextEditingController();

  Future<void> _submitEmail() async {
    final email = _emailController.text;

    // API URL
    final url = Uri.parse('http://localhost:3000/api/hiveapp/addEmail');

    // Prepare the data to send
    final Map<String, String> data = {
      'userId': widget.userId,
      'email': email,
    };

    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode(data),
      );

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email saved successfully!')),
        );
      } else {
        final errorData = jsonDecode(response.body);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: ${errorData['message']}')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('An error occurred: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Email'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitEmail,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
