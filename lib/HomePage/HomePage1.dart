// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:hive_application/Bottom%20Navigation%20Bar/Navigation%201.dart';
// import 'package:lottie/lottie.dart';
// import '../Countdown/CountDown.dart';
// import 'HomePage_Without_email.dart';
// import '../University/Screen_1.dart';
// import 'package:http/http.dart' as http;

// class BottomSheetApp extends StatefulWidget {
//   // final String userId;
//   const BottomSheetApp({super.key});

//   @override
//   State<BottomSheetApp> createState() => _BottomSheetAppState();
// }

// class _BottomSheetAppState extends State<BottomSheetApp> {
//   // final List<TextEditingController> _otpControllers =
//   //     List.generate(4, (_) => TextEditingController());
//   // final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
//   final List<Map<String, String>> posts = List.generate(
//       10,
//       (index) => {
//             'university': 'Mari State University',
//             'location': 'Moscow, RU',
//             'event': 'Indo-Russian Education Summit',
//             'image': 'https://via.placeholder.com/150'
//           });

//   // void _onOtpChanged(String value, int index) {
//   //   if (value.isNotEmpty && index < 3) {
//   //     FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
//   //   } else if (value.isEmpty && index > 0) {
//   //     FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
//   //   }
//   // }
//   final TextEditingController mail = TextEditingController();

//   final List<TextEditingController> _otpControllers =
//       List.generate(4, (_) => TextEditingController());
//   final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _showEmailVerificationSheet();
//     });
//     Future.delayed(const Duration(milliseconds: 3000), () {
//       setState(() {
//         // _opacity = 1.0;
//       });
//     });
//   }

//   void _onOtpChange(String value, int index) {
//     if (value.isNotEmpty && index < 3) {
//       FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
//     } else if (value.isEmpty && index > 0) {
//       FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
//     }
//   }

//   void _showDoneBottomSheet() {
//     showModalBottomSheet(
//       context: context,
//       isDismissible: false, // Prevent user from dismissing manually
//       enableDrag: false, // Disable dragging to close
//       builder: (context) {
//         return SizedBox(
//           height: 300,
//           child: Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(top: 55),
//                   child: Center(
//                       child: Text(
//                     "All Done!",
//                     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//                   )),
//                 ),
//                 Lottie.asset(
//                   'assets/done_1.json', // Add your Lottie animation in assets
//                   width: 200,
//                   height: 200,
//                   repeat: false,
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }

// //=========================================================================
//   void _otp_verification(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     showModalBottomSheet<void>(
//       context: context,
//       isDismissible: false,
//       isScrollControlled: true,
//       enableDrag: false,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(screenWidth * 0.08),
//           topLeft: Radius.circular(screenWidth * 0.08),
//         ),
//       ),
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//           ),
//           child: SingleChildScrollView(
//             child: Container(
//               height: screenHeight * 0.40,
//               width: screenWidth,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(screenWidth * 0.08),
//                   topLeft: Radius.circular(screenWidth * 0.08),
//                 ),
//               ),
//               padding: EdgeInsets.all(screenWidth * 0.045),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Row(
//                     children: [
//                       Text(
//                         "Enter OTP",
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.055,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pop(context);
//                       _showEmailVerificationSheet();
//                     },
//                     child: Row(
//                       children: [
//                         Text(
//                           "OTP sent to ",
//                           style: TextStyle(
//                             //fontWeight: FontWeight.bold,
//                             fontSize: screenWidth * 0.03,
//                           ),
//                         ),
//                         Text(
//                           "sample@gmail.com",
//                           style: TextStyle(
//                             color: Color(0xFF3C97D3),
//                             fontSize: screenWidth * 0.03,
//                           ),
//                         ),
//                         Icon(Icons.edit, size: screenWidth * 0.05),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: List.generate(4, (index) {
//                       return SizedBox(
//                         width: 50,
//                         child: TextFormField(
//                           controller: _otpControllers[index],
//                           focusNode: _focusNodes[index],
//                           keyboardType: TextInputType.number,
//                           textAlign: TextAlign.center,
//                           maxLength: 1,
//                           style: TextStyle(
//                               fontSize: 18, fontWeight: FontWeight.bold),
//                           decoration: InputDecoration(
//                             counterText: "",
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.grey),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                   color: Theme.of(context).primaryColor),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           onChanged: (value) {
//                             if (value.isNotEmpty && index < 3) {
//                               FocusScope.of(context)
//                                   .requestFocus(_focusNodes[index + 1]);
//                             }
//                             _onOtpChange(value, index);
//                           },
//                         ),
//                       );
//                     }),
//                   ),
//                   SizedBox(height: screenHeight * 0.0),
//                   TextButton(
//                     onPressed: () {
//                       // Resend OTP action
//                     },
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "OTP not received?",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: screenWidth * 0.04,
//                           ),
//                         ),
//                         Text(
//                           " Resend now",
//                           style: TextStyle(
//                             color: Color(0xFF3C97D3),
//                             fontSize: screenWidth * 0.04,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   Container(
//                     height: screenHeight * 0.08,
//                     width: screenWidth * 0.88,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         _showDoneBottomSheet();
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => navi_home()),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF5A9ECF),
//                         padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.35,
//                           vertical: screenHeight * 0.02,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: FittedBox(
//                         fit: BoxFit.scaleDown,
//                         child: Text(
//                           "Verify Now",
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.045,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// //=========================================================================

//   void _showEmailVerificationSheet() {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     showModalBottomSheet<void>(
//       context: context,
//       isScrollControlled: true,
//       isDismissible: false,
//       enableDrag: false,
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//           ),
//           child: SingleChildScrollView(
//             child: Container(
//               height: screenHeight * 0.3,
//               decoration: const BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(
//                         30,
//                       ),
//                       topRight: Radius.circular(
//                         30,
//                       ))),
//               padding: EdgeInsets.all(screenWidth * 0.04),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   Row(
//                     children: [
//                       Text(
//                         "Add Email",
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: screenHeight * 0.01,
//                   ),
//                   TextField(
//                     controller: mail,
//                     style: TextStyle(fontSize: screenWidth * 0.04),
//                     decoration: InputDecoration(
//                       labelText: " Enter email",
//                       labelStyle: TextStyle(fontSize: screenWidth * 0.038),
//                       border: OutlineInputBorder(
//                         borderRadius:
//                             BorderRadius.circular(screenWidth * 0.025),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   Row(
//                     children: [
//                       Text(
//                         "*",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                       Text(
//                         "Add your email for updates and security",
//                         style: TextStyle(fontSize: 12),
//                       )
//                     ],
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   SizedBox(
//                     height: screenHeight * 0.07,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         //await _submitEmail();
//                         Navigator.pop(context);
//                         _otp_verification(context);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF5A9ECF),
//                         padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.3,
//                           vertical: screenHeight * 0.02,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.circular(screenWidth * 0.02),
//                         ),
//                       ),
//                       child: Text(
//                         "Get OTP",
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.040,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   // Future<void> _submitEmail() async {
//   //   final email = mail.text;

//   //   // API URL
//   //   final url = Uri.parse('http://localhost:3000/api/hiveapp/addEmail');

//   //   // Prepare the data to send
//   //   final Map<String, String> data = {
//   //     'userId': widget.userId,
//   //     'email': email,
//   //   };

//   //   try {
//   //     final response = await http.post(
//   //       url,
//   //       headers: {'Content-Type': 'application/json'},
//   //       body: jsonEncode(data),
//   //     );

//   //     if (response.statusCode == 200) {
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         SnackBar(content: Text('Email saved successfully!')),
//   //       );
//   //     } else {
//   //       final errorData = jsonDecode(response.body);
//   //       ScaffoldMessenger.of(context).showSnackBar(
//   //         SnackBar(content: Text('Error: ${errorData['message']}')),
//   //       );
//   //     }
//   //   } catch (e) {
//   //     ScaffoldMessenger.of(context).showSnackBar(
//   //       SnackBar(content: Text('An error occurred: $e')),
//   //     );
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;

//     return SafeArea(
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: PostsList(posts: posts),
//         ),
//       ),
//     );
//   }
// }

// class PostsList extends StatefulWidget {
//   final List<Map<String, String>> posts;

//   const PostsList({super.key, required this.posts});

//   @override
//   _PostsListState createState() => _PostsListState();
// }

// class _PostsListState extends State<PostsList> {
//   double _opacity = 0.1;

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     return AnimatedOpacity(
//       duration: const Duration(milliseconds: 300),
//       opacity: 1.0,
//       child: ListView.builder(
//         itemCount: widget.posts.length,
//         itemBuilder: (context, index) {
//           final post = widget.posts[index];
//           return Column(
//             children: [
//               if (index == 0) _buildSchoolIcon(),
//               _buildPostCard(post, context),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildSchoolIcon() {
//     return const Text("");
//   }

//   Widget _buildPostCard(Map<String, String> post, BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     return Card(
//       margin: EdgeInsets.symmetric(
//         horizontal: screenWidth * 0.04,
//         vertical: screenHeight * 0.01,
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(screenWidth * 0.03),
//       ),
//       elevation: 4,
//       child: Padding(
//         padding: EdgeInsets.all(screenWidth * 0.04),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: const AssetImage('assets/7.png'),
//                 radius: screenWidth * 0.075,
//               ),
//               title: Text(
//                 post['university']!,
//                 style: TextStyle(fontSize: screenWidth * 0.045),
//               ),
//               subtitle: Text(
//                 post['location']!,
//                 style: TextStyle(fontSize: screenWidth * 0.035),
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.01),
//             Text(
//               '${post['university']} Shines at',
//               style: TextStyle(
//                 fontSize: screenWidth * 0.04,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.005),
//             Text(
//               post['event']!,
//               style: TextStyle(
//                 fontSize: screenWidth * 0.035,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             const Image(image: AssetImage("assets/post1.png")),
//             SizedBox(height: screenHeight * 0.02),
//             Center(
//               child: SizedBox(
//                 height: screenHeight * 0.07,
//                 width: screenWidth * 0.75,
//                 child: ElevatedButton(
//                   onPressed: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (context) => SliverAppBarExample(
//                               profileImage:
//                                   post['profileImage']!, // Pass profile image
//                               postImage: post['postImage']!, // Pass post image
//                               title: post['title']!, // Pass title
//                               description: post['description']!,
//                               index: 0,
//                             )),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF5A9ECF),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(screenWidth * 0.2),
//                     ),
//                   ),
//                   child: Text(
//                     'Explore Now',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: screenWidth * 0.04,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

//================================================================
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:hive_application/Bottom%20Navigation%20Bar/Navigation%201.dart';
// import 'package:lottie/lottie.dart';
// import '../Countdown/CountDown.dart';
// import 'HomePage_Without_email.dart';
// import '../University/Screen_1.dart';
// import 'package:http/http.dart' as http;

// class BottomSheetApp extends StatefulWidget {
//   const BottomSheetApp({super.key});

//   @override
//   State createState() => _BottomSheetAppState();
// }

// class _BottomSheetAppState extends State<BottomSheetApp> {
//   final List<Map<String, String>> posts = List.generate(
//     10,
//     (index) => {
//       'university': 'Mari State University',
//       'location': 'Moscow, RU',
//       'event': 'Indo-Russian Education Summit',
//       'image': 'https://via.placeholder.com/150',
//       'profileImage': 'assets/7.png',
//       'postImage': 'assets/post_img_1.png',
//       'title': 'Mari State University',
//       'description': 'Mari State University Shines at',
//     },
//   );

//   final TextEditingController mail = TextEditingController();
//   final List<TextEditingController> _otpControllers =
//       List.generate(4, (_) => TextEditingController());
//   final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       showEmailVerificationSheet();
//     });
//   }

//   void _onOtpChange(String value, int index) {
//     if (value.isNotEmpty && index < 3) {
//       FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
//     } else if (value.isEmpty && index > 0) {
//       FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
//     }
//   }

//   void _otp_verification(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     showModalBottomSheet(
//       context: context,
//       isDismissible: false,
//       isScrollControlled: true,
//       enableDrag: false,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(screenWidth * 0.08),
//           topLeft: Radius.circular(screenWidth * 0.08),
//         ),
//       ),
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//           ),
//           child: SingleChildScrollView(
//             child: Container(
//               height: screenHeight * 0.40,
//               width: screenWidth,
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topRight: Radius.circular(screenWidth * 0.08),
//                   topLeft: Radius.circular(screenWidth * 0.08),
//                 ),
//               ),
//               padding: EdgeInsets.all(screenWidth * 0.045),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Enter OTP",
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.055,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pop(context);
//                       showEmailVerificationSheet();
//                     },
//                     child: Row(
//                       children: [
//                         Text(
//                           "OTP sent to ",
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.03,
//                           ),
//                         ),
//                         Text(
//                           "sample@gmail.com",
//                           style: TextStyle(
//                             color: Color(0xFF3C97D3),
//                             fontSize: screenWidth * 0.03,
//                           ),
//                         ),
//                         Icon(Icons.edit, size: screenWidth * 0.05),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: List.generate(4, (index) {
//                       return SizedBox(
//                         width: screenWidth * 0.15,
//                         child: TextFormField(
//                           controller: _otpControllers[index],
//                           focusNode: _focusNodes[index],
//                           keyboardType: TextInputType.number,
//                           textAlign: TextAlign.center,
//                           maxLength: 1,
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.04,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           decoration: InputDecoration(
//                             counterText: "",
//                             border: OutlineInputBorder(),
//                             enabledBorder: OutlineInputBorder(
//                               borderSide: BorderSide(color: Colors.grey),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                             focusedBorder: OutlineInputBorder(
//                               borderSide: BorderSide(
//                                 color: Theme.of(context).primaryColor,
//                               ),
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           onChanged: (value) {
//                             _onOtpChange(value, index);
//                           },
//                         ),
//                       );
//                     }),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   TextButton(
//                     onPressed: () {
//                       // Resend OTP action
//                     },
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Text(
//                           "OTP not received?",
//                           style: TextStyle(
//                             color: Colors.black,
//                             fontSize: screenWidth * 0.04,
//                           ),
//                         ),
//                         Text(
//                           " Resend now",
//                           style: TextStyle(
//                             color: Color(0xFF3C97D3),
//                             fontSize: screenWidth * 0.04,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   Container(
//                     height: screenHeight * 0.08,
//                     width: screenWidth * 0.88,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => navi_home()),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Color(0xFF5A9ECF),
//                         padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.35,
//                           vertical: screenHeight * 0.02,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(8),
//                         ),
//                       ),
//                       child: FittedBox(
//                         fit: BoxFit.scaleDown,
//                         child: Text(
//                           "Verify Now",
//                           style: TextStyle(
//                             fontSize: screenWidth * 0.045,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   void _showEmailVerificationSheet() {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     showModalBottomSheet(
//       context: context,
//       isScrollControlled: true,
//       isDismissible: false,
//       enableDrag: false,
//       builder: (BuildContext context) {
//         return Padding(
//           padding: EdgeInsets.only(
//             bottom: MediaQuery.of(context).viewInsets.bottom,
//           ),
//           child: SingleChildScrollView(
//             child: Container(
//               height: screenHeight * 0.3,
//               decoration: const BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               padding: EdgeInsets.all(screenWidth * 0.04),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Add Email",
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.06,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: screenHeight * 0.01),
//                   TextField(
//                     controller: mail,
//                     style: TextStyle(fontSize: screenWidth * 0.04),
//                     decoration: InputDecoration(
//                       labelText: " Enter email",
//                       labelStyle: TextStyle(fontSize: screenWidth * 0.038),
//                       border: OutlineInputBorder(
//                         borderRadius:
//                             BorderRadius.circular(screenWidth * 0.025),
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   Row(
//                     children: [
//                       Text(
//                         "*",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                       Text(
//                         "Add your email for updates and security",
//                         style: TextStyle(fontSize: screenWidth * 0.03),
//                       )
//                     ],
//                   ),
//                   SizedBox(height: screenHeight * 0.02),
//                   SizedBox(
//                     height: screenHeight * 0.07,
//                     width: double.infinity,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         Navigator.pop(context);
//                         _otp_verification(context);
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: const Color(0xFF5A9ECF),
//                         padding: EdgeInsets.symmetric(
//                           horizontal: screenWidth * 0.3,
//                           vertical: screenHeight * 0.02,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius:
//                               BorderRadius.circular(screenWidth * 0.02),
//                         ),
//                       ),
//                       child: Text(
//                         "Get OTP",
//                         style: TextStyle(
//                           fontSize: screenWidth * 0.04,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;

//     return SafeArea(
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: Scaffold(
//           body: PostsList(posts: posts),
//         ),
//       ),
//     );
//   }
// }

// class PostsList extends StatefulWidget {
//   final List<Map<String, String>> posts;

//   const PostsList({super.key, required this.posts});

//   @override
//   _PostsListState createState() => _PostsListState();
// }

// class _PostsListState extends State<PostsList> {
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     return ListView.builder(
//       itemCount: widget.posts.length,
//       itemBuilder: (context, index) {
//         final post = widget.posts[index];
//         return Column(
//           children: [
//             if (index == 0) _buildSchoolIcon(),
//             _buildPostCard(post, context),
//           ],
//         );
//       },
//     );
//   }

//   Widget _buildSchoolIcon() {
//     return const Text("");
//   }

//   Widget _buildPostCard(Map post, BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     return Card(
//       margin: EdgeInsets.symmetric(
//         horizontal: screenWidth * 0.04,
//         vertical: screenHeight * 0.01,
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(screenWidth * 0.03),
//       ),
//       elevation: 4,
//       child: Padding(
//         padding: EdgeInsets.all(screenWidth * 0.04),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: AssetImage(post['profileImage']!),
//                 radius: screenWidth * 0.075,
//               ),
//               title: Text(
//                 post['university']!,
//                 style: TextStyle(fontSize: screenWidth * 0.045),
//               ),
//               subtitle: Text(
//                 post['location']!,
//                 style: TextStyle(fontSize: screenWidth * 0.035),
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.01),
//             Text(
//               '${post['university']} Shines at',
//               style: TextStyle(
//                 fontSize: screenWidth * 0.04,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.005),
//             Text(
//               post['event']!,
//               style: TextStyle(
//                 fontSize: screenWidth * 0.035,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Image.asset(post['postImage']!, fit: BoxFit.cover),
//             SizedBox(height: screenHeight * 0.02),
//             Center(
//               child: SizedBox(
//                 height: screenHeight * 0.07,
//                 width: screenWidth * 0.75,
//                 child: ElevatedButton(
//                   onPressed: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => SliverAppBarExample(
//                         profileImage: post['profileImage']!,
//                         postImage: post['postImage']!,
//                         title: post['title']!,
//                         description: post['description']!,
//                         postIndex: index, // Pass the index here
//                       ),
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF5A9ECF),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(screenWidth * 0.2),
//                     ),
//                   ),
//                   child: Text(
//                     'Explore Now',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: screenWidth * 0.04,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hive_application/Bottom%20Navigation%20Bar/Navigation%201.dart';
import 'package:lottie/lottie.dart';
import '../Countdown/CountDown.dart';
import 'HomePage_Without_email.dart';
import '../University/Screen_1.dart';
import 'package:http/http.dart' as http;

class BottomSheetApp extends StatefulWidget {
  const BottomSheetApp({super.key});

  @override
  State<BottomSheetApp> createState() => _BottomSheetAppState();
}

class _BottomSheetAppState extends State<BottomSheetApp> {
  final List<Map<String, String>> posts = List.generate(
    10,
    (index) => {
      'university': 'Mari State University',
      'location': 'Moscow, RU',
      'event': 'Indo-Russian Education Summit',
      'image': 'https://via.placeholder.com/150'
    },
  );

  final TextEditingController mail = TextEditingController();
  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showEmailVerificationSheet();
    });
  }

  void _onOtpChange(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  void _showDoneBottomSheet() {
    showModalBottomSheet(
      context: context,
      isDismissible: false,
      enableDrag: false,
      builder: (context) {
        final mediaQuery = MediaQuery.of(context);
        final screenHeight = mediaQuery.size.height;
        final screenWidth = mediaQuery.size.width;

        return SizedBox(
          height: screenHeight * 0.4,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "All Done!",
                  style: TextStyle(
                    fontSize: screenWidth * 0.08,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Lottie.asset(
                  'assets/done_1.json',
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.2,
                  repeat: false,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _otp_verification(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    showModalBottomSheet(
      context: context,
      isDismissible: false,
      isScrollControlled: true,
      enableDrag: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(screenWidth * 0.08),
          topLeft: Radius.circular(screenWidth * 0.08),
        ),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            child: Container(
              height: screenHeight * 0.4,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(screenWidth * 0.08),
                  topLeft: Radius.circular(screenWidth * 0.08),
                ),
              ),
              padding: EdgeInsets.all(screenWidth * 0.045),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "Enter OTP",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      _showEmailVerificationSheet();
                    },
                    child: Row(
                      children: [
                        Text(
                          "OTP sent to ",
                          style: TextStyle(fontSize: screenWidth * 0.035),
                        ),
                        Text(
                          "sample@gmail.com",
                          style: TextStyle(
                            color: Color(0xFF3C97D3),
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                        Icon(Icons.edit, size: screenWidth * 0.05),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                          decoration: InputDecoration(
                            counterText: "",
                            border: OutlineInputBorder(),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).primaryColor),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          onChanged: (value) {
                            if (value.isNotEmpty && index < 3) {
                              FocusScope.of(context)
                                  .requestFocus(_focusNodes[index + 1]);
                            }
                            _onOtpChange(value, index);
                          },
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "OTP not received?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                        Text(
                          " Resend now",
                          style: TextStyle(
                            color: Color(0xFF3C97D3),
                            fontSize: screenWidth * 0.035,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Container(
                    height: screenHeight * 0.08,
                    width: screenWidth * 0.88,
                    child: ElevatedButton(
                      onPressed: () {
                        _showDoneBottomSheet();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => navi_home()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF5A9ECF),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.35,
                          vertical: screenHeight * 0.02,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "Verify Now",
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void _showEmailVerificationSheet() {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      isDismissible: false,
      enableDrag: false,
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: SingleChildScrollView(
            child: Container(
              height: screenHeight * 0.3,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenWidth * 0.08),
                  topRight: Radius.circular(screenWidth * 0.08),
                ),
              ),
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "Add Email",
                        style: TextStyle(
                          fontSize: screenWidth * 0.06,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  TextField(
                    controller: mail,
                    style: TextStyle(fontSize: screenWidth * 0.04),
                    decoration: InputDecoration(
                      labelText: "Enter email",
                      labelStyle: TextStyle(fontSize: screenWidth * 0.040),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(screenWidth * 0.02),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      Text(
                        "*",
                        style: TextStyle(color: Colors.red),
                      ),
                      Text(
                        "Add your email for updates and security",
                        style: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  SizedBox(
                    height: screenHeight * 0.07,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        //await _submitEmail();
                        Navigator.pop(context);
                        _otp_verification(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5A9ECF),
                        padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.3,
                          vertical: screenHeight * 0.02,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(screenWidth * 0.02),
                        ),
                      ),
                      child: Text(
                        "Get OTP",
                        style: TextStyle(
                          fontSize: screenWidth * 0.040,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: PostsList(posts: posts),
        ),
      ),
    );
  }
}

// class PostsList extends StatelessWidget {
//   final List<Map<String, String>> posts;

//   const PostsList({super.key, required this.posts});

//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     return ListView.builder(
//       itemCount: posts.length,
//       itemBuilder: (context, index) {
//         final post = posts[index];
//         return Column(
//           children: [
//             if (index == 0) _buildSchoolIcon(screenWidth),
//             _buildPostCard(post, context),
//           ],
//         );
//       },
//     );
//   }

//   Widget _buildSchoolIcon(double screenWidth) {
//     return SizedBox(
//       width: screenWidth * 0.8,
//       child: const Text(
//         "Featured Universities",
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         ),
//       ),
//     );
//   }

//   Widget _buildPostCard(Map<String, String> post, BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;

//     return Card(
//       margin: EdgeInsets.symmetric(
//         horizontal: screenWidth * 0.04,
//         vertical: screenHeight * 0.01,
//       ),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(screenWidth * 0.03),
//       ),
//       elevation: 4,
//       child: Padding(
//         padding: EdgeInsets.all(screenWidth * 0.04),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListTile(
//               leading: CircleAvatar(
//                 backgroundImage: const AssetImage('assets/7.png'),
//                 radius: screenWidth * 0.075,
//               ),
//               title: Text(
//                 post['university']!,
//                 style: TextStyle(fontSize: screenWidth * 0.045),
//               ),
//               subtitle: Text(
//                 post['location']!,
//                 style: TextStyle(fontSize: screenWidth * 0.035),
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.01),
//             Text(
//               '${post['university']} Shines at',
//               style: TextStyle(
//                 fontSize: screenWidth * 0.04,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             SizedBox(height: screenHeight * 0.005),
//             Text(
//               post['event']!,
//               style: TextStyle(
//                 fontSize: screenWidth * 0.035,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Image.network(
//               post['image']!,
//               width: screenWidth * 0.8,
//               height: screenHeight * 0.2,
//               fit: BoxFit.cover,
//             ),
//             SizedBox(height: screenHeight * 0.02),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => SliverAppBarExample(
//                         profileImage: post['profileImage']!,
//                         postImage: post['postImage']!,
//                         title: post['title']!,
//                         description: post['description']!,
//                         index: 0,
//                       ),
//                     ),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFF5A9ECF),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(screenWidth * 0.2),
//                   ),
//                 ),
//                 child: Text(
//                   'Explore Now',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: screenWidth * 0.04,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class PostsList extends StatefulWidget {
  final List<Map<String, String>> posts;

  const PostsList({super.key, required this.posts});

  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  double _opacity = 0.1;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return AnimatedOpacity(
      duration: const Duration(milliseconds: 300),
      opacity: 1.0,
      child: ListView.builder(
        itemCount: widget.posts.length,
        itemBuilder: (context, index) {
          final post = widget.posts[index];
          return Column(
            children: [
              if (index == 0) _buildSchoolIcon(),
              _buildPostCard(post, context),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSchoolIcon() {
    return const Text("");
  }

  Widget _buildPostCard(Map<String, String> post, BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.04,
        vertical: screenHeight * 0.01,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(screenWidth * 0.03),
      ),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: const AssetImage('assets/7.png'),
                radius: screenWidth * 0.075,
              ),
              title: Text(
                post['university']!,
                style: TextStyle(fontSize: screenWidth * 0.045),
              ),
              subtitle: Text(
                post['location']!,
                style: TextStyle(fontSize: screenWidth * 0.035),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            Text(
              '${post['university']} Shines at',
              style: TextStyle(
                fontSize: screenWidth * 0.04,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: screenHeight * 0.005),
            Text(
              post['event']!,
              style: TextStyle(
                fontSize: screenWidth * 0.035,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Image(image: AssetImage("assets/post1.png")),
            SizedBox(height: screenHeight * 0.02),
            Center(
              child: SizedBox(
                height: screenHeight * 0.07,
                width: screenWidth * 0.75,
                child: ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SliverAppBarExample(
                              profileImage:
                                  post['profileImage']!, // Pass profile image
                              postImage: post['postImage']!, // Pass post image
                              title: post['title']!, // Pass title
                              description: post['description']!,
                              index: 0,
                            )),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF5A9ECF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(screenWidth * 0.2),
                    ),
                  ),
                  child: Text(
                    'Explore Now',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
