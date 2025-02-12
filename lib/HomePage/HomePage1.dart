// // // import 'package:flutter/material.dart';
// // //
// // //
// // //
// // //
// // //
// // // class BottomSheetApp extends StatelessWidget {
// // //   const BottomSheetApp({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     // TextEditingController mail=TextEditingController();
// // //
// // //     return MaterialApp(
// // //
// // //       home: Scaffold(
// // //         appBar: AppBar(title: const Text('Bottom Sheet Sample')),
// // //         body: const BottomSheetExample(),
// // //       ),
// // //     );
// // //   }
// // // }
// // //
// // // class BottomSheetExample extends StatelessWidget {
// // //
// // //   const BottomSheetExample({super.key});
// // //
// // //   @override
// // //   Widget build(BuildContext context) {
// // //     TextEditingController mail=TextEditingController();
// // //
// // //
// // //     return Center(
// // //       child: ElevatedButton(
// // //         child: const Text('showModalBottomSheet'),
// // //         onPressed: () {
// // //           showModalBottomSheet<void>(
// // //             context: context,
// // //             isDismissible: false, // Prevent closing by tapping outside.
// // //             enableDrag: false, // Disable dragging to close.
// // //             builder: (BuildContext context) {
// // //               return Container(
// // //                 height: 200,
// // //                 color: Colors.white,
// // //                 child: Center(
// // //                   child: Column(
// // //                     mainAxisAlignment: MainAxisAlignment.center,
// // //                     mainAxisSize: MainAxisSize.min,
// // //                     children: <Widget>[
// // //                       TextField(
// // //                         controller: mail,
// // //                         decoration: InputDecoration(
// // //                           labelText: "Enter email",
// // //                           border: OutlineInputBorder(
// // //                             borderRadius: BorderRadius.circular(10),
// // //                           ),
// // //                         ),
// // //                       ),
// // //                       SizedBox(height: 20,),
// // //                       GestureDetector(
// // //                         onTap: (){
// // //                           if(mail.text.isNotEmpty)
// // //                             {
// // //                               Navigator.pop(context);
// // //                             }
// // //                         },
// // //                         child: Container(
// // //                           height: 50,
// // //                           width: 350,
// // //                           // decoration: BoxDecoration(
// // //                           //   borderRadius: BorderRadius.circular(20),
// // //                           // ),
// // //                           color: Color(0xff3C97D3),
// // //                           child: Center(child: Text("Verify E mail",style: TextStyle(color: Colors.white,fontSize: 20),))
// // //                         ),
// // //                       ),
// // //                     ],
// // //                   ),
// // //                 ),
// // //               );
// // //             },
// // //           );
// // //         },
// // //       ),
// // //     );
// // //   }
// // // }
// //
// //
// // import 'package:flutter/material.dart';
// //
// // import '../Countdown/CountDown.dart';
// // import '../University/Screen_1.dart';
// //
// // class BottomSheetApp extends StatelessWidget {
// //   final List<Map<String, String>> posts = List.generate(10, (index) {
// //     return {
// //       'university': 'Mari State University',
// //       'location': 'Moscow, RU',
// //       'event': 'Indo-Russian Education Summit',
// //       'image': 'https://via.placeholder.com/150' // Replace with your image URL
// //     };
// //   });
// //    BottomSheetApp({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(title: const Text('Bottom Sheet Sample')),
// //         body: Column(
// //           children: [
// //             ListView.builder(
// //               itemCount: posts.length,
// //               itemBuilder: (context, index) {
// //                 final post = posts[index];
// //                 return Card(
// //                   margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //                   elevation: 4,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(16.0),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         ListTile(
// //                           leading: CircleAvatar(
// //                             backgroundImage: AssetImage('assets/7.png'), // Replace with your image path
// //                             radius: 30,
// //                           ),
// //                           title: Text(post['university']!),
// //                           subtitle: Text(post['location']!),
// //                         ),
// //                         SizedBox(height: 8),
// //                         Text(
// //                           '${post['university']} Shines at',
// //                           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// //                         ),
// //                         SizedBox(height: 4),
// //                         Text(
// //                           post['event']!,
// //                           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// //                         ),
// //                         Image(image: AssetImage("assets/post1.png")),
// //                         SizedBox(height: 16),
// //                         Container(
// //                           height: 50,
// //                           width: 300,
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(50),
// //                           ),
// //                           child: ElevatedButton(
// //                             onPressed: () {
// //                               // Handle button press
// //                             },
// //                             child: Text('Explore Now',style: TextStyle(color: Colors.white),),
// //                             style: ElevatedButton.styleFrom(
// //                               backgroundColor: Color(0xFF5A9ECF),
// //                               shape: RoundedRectangleBorder(
// //
// //                                 borderRadius: BorderRadius.circular(80),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //             BottomSheetExample(),
// //           ],
// //         )
// //       ),
// //     );
// //   }
// // }
// //
// // class BottomSheetExample extends StatefulWidget {
// //   const BottomSheetExample({super.key});
// //
// //   @override
// //   _BottomSheetExampleState createState() => _BottomSheetExampleState();
// // }
// //
// // class _BottomSheetExampleState extends State<BottomSheetExample> {
// //   final TextEditingController mail = TextEditingController();
// //
// //   @override
// //   void initState() {
// //     super.initState();
// //
// //     // Show the modal bottom sheet automatically after the widget is built.
// //     WidgetsBinding.instance.addPostFrameCallback((_) {
// //       showModalBottomSheet<void>(
// //         context: context,
// //         isDismissible: false, // Prevent closing by tapping outside.
// //         enableDrag: false, // Disable dragging to close.
// //         builder: (BuildContext context) {
// //           return Container(
// //             height: 200,
// //             color: Colors.white,
// //             child: Center(
// //               child: Column(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 mainAxisSize: MainAxisSize.min,
// //                 children: <Widget>[
// //                   TextField(
// //                     controller: mail,
// //                     decoration: InputDecoration(
// //                       labelText: "Enter email",
// //                       border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(10),
// //                       ),
// //                     ),
// //                   ),
// //                   const SizedBox(height: 20),
// //                   GestureDetector(
// //                     onTap: () {
// //                       if (mail.text.isNotEmpty) {
// //                         Navigator.pop(context);
// //                       }
// //                     },
// //                     child: Container(
// //                       height: 50,
// //                       width: 350,
// //                       color: const Color(0xff3C97D3),
// //                       child: const Center(
// //                         child: Text(
// //                           "Verify Email",
// //                           style: TextStyle(color: Colors.white, fontSize: 20),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           );
// //         },
// //       );
// //     });
// //   }
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     final List<Map<String, String>> posts = List.generate(10, (index) {
// //       return {
// //         'university': 'Mari State University',
// //         'location': 'Moscow, RU',
// //         'event': 'Indo-Russian Education Summit',
// //         'image': 'https://via.placeholder.com/150' // Replace with your image URL
// //       };
// //     });
// //     return Column(
// //       children: [
// //         ListView.builder(
// //           itemCount: posts.length,
// //           itemBuilder: (context, index) {
// //             final post = posts[index];
// //             return Column(
// //               children: [
// //                 Stack(
// //                   children: [
// //                     GestureDetector(
// //                       onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>CountdownPage())),
// //                       child: Container(
// //                         height: 50,
// //                         width: 50,
// //                         decoration: BoxDecoration(
// //                           borderRadius: BorderRadius.circular(90),
// //                           color: Color(0xFF5A9ECF),
// //                         ),
// //
// //                         child: Icon(Icons.school_outlined,color: Colors.white,size: 30,),
// //                       ),
// //                     )
// //                   ],
// //                 ),
// //                 Card(
// //                   margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
// //                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
// //                   elevation: 4,
// //                   child: Padding(
// //                     padding: const EdgeInsets.all(16.0),
// //                     child: Column(
// //                       crossAxisAlignment: CrossAxisAlignment.start,
// //                       children: [
// //                         ListTile(
// //                           leading: CircleAvatar(
// //                             backgroundImage: AssetImage('assets/7.png'), // Replace with your image path
// //                             radius: 30,
// //                           ),
// //                           title: Text(post['university']!),
// //                           subtitle: Text(post['location']!),
// //                         ),
// //                         SizedBox(height: 8),
// //                         Text(
// //                           '${post['university']} Shines at',
// //                           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
// //                         ),
// //                         SizedBox(height: 4),
// //                         Text(
// //                           post['event']!,
// //                           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
// //                         ),
// //                         Image(image: AssetImage("assets/post1.png")),
// //                         SizedBox(height: 16),
// //                         Container(
// //                           height: 50,
// //                           width: 300,
// //                           decoration: BoxDecoration(
// //                             borderRadius: BorderRadius.circular(50),
// //                           ),
// //                           child: ElevatedButton(
// //                             onPressed: () {
// //                               Navigator.push(context, MaterialPageRoute(builder: (context)=>SliverAppBarExample()));
// //                               // Handle button press
// //                             },
// //                             child: Text('Explore Now',style: TextStyle(color: Colors.white),),
// //                             style: ElevatedButton.styleFrom(
// //                               backgroundColor: Color(0xFF5A9ECF),
// //                               shape: RoundedRectangleBorder(
// //
// //                                 borderRadius: BorderRadius.circular(80),
// //                               ),
// //                             ),
// //                           ),
// //                         ),
// //
// //                       ],
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             );
// //
// //           },
// //
// //         ),
// //       ],
// //     );
// //   }
// // }
//
//
// import 'package:flutter/material.dart';
// import '../Countdown/CountDown.dart';
// import '../University/Screen_1.dart';
//
// class BottomSheetApp extends StatelessWidget {
//   final List<Map<String, String>> posts = List.generate(10, (index) => {
//     'university': 'Mari State University',
//     'location': 'Moscow, RU',
//     'event': 'Indo-Russian Education Summit',
//     'image': 'https://via.placeholder.com/150'
//   });
//
//   BottomSheetApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Bottom Sheet Sample')),
//         body: PostsList(posts: posts),
//         floatingActionButton: FloatingActionButton(
//           shape: CircleBorder(),
//             backgroundColor:  Color(0xFF5A9ECF),
//             onPressed: (){
//          Navigator.push(context, MaterialPageRoute(builder: (context)=>CountdownPage()));
//         },
//         child:  Container(
//           height: 50,
//           width: 50,
//           margin: const EdgeInsets.symmetric(vertical: 8),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(90),
//             color: const Color(0xFF5A9ECF),
//           ),
//           child: const Icon(Icons.school_outlined, color: Colors.white, size: 30),
//         )),
//
//       ),
//     );
//   }
// }
//
// class PostsList extends StatefulWidget {
//   final List<Map<String, String>> posts;
//
//   const PostsList({super.key, required this.posts});
//
//   @override
//   _PostsListState createState() => _PostsListState();
// }
//
// class _PostsListState extends State<PostsList> {
//
//   final TextEditingController mail = TextEditingController();
//   double _opacity = 0.1;
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _showEmailVerificationSheet();
//     });
//     Future.delayed(const Duration(milliseconds: 3000), () {
//       setState(() {
//         _opacity = 1.0;
//       });
//     });
//   }
//   void _otp_verification(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;
//     showModalBottomSheet<void>(
//       context: context,
//       isDismissible: false,
//       enableDrag: false,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//           topRight: Radius.circular(30),
//           topLeft: Radius.circular(30),
//         ),
//       ),
//       builder: (BuildContext context) {
//         return Container(
//           height: 450,
//           decoration: const BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.only(
//               topRight: Radius.circular(30),
//               topLeft: Radius.circular(30),
//             ),
//           ),
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               const Text(
//                 "Enter your OTP to verify.",
//                 style: TextStyle(
//                   fontSize: 22,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: screenHeight * 0.04),
//               Row(
//                 children: [
//                   Text("OTP sent to ",style: TextStyle(fontWeight: FontWeight.bold),),
//                   Text("sample@gmail.com",style: TextStyle(color: Colors.blue),),
//                   Icon(Icons.edit),
//                 ],
//               ),
//
//               SizedBox(height: screenHeight * 0.02),
//
//               SizedBox(height: screenHeight * 0.03),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: List.generate(
//                   4,
//                       (index) => Container(
//                     width: screenWidth * 0.12,
//                     height: screenHeight * 0.08,
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black, width: 1),
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                     child: TextField(
//                       textAlign: TextAlign.center,
//                       keyboardType: TextInputType.number,
//                       maxLength: 1,
//                       decoration: const InputDecoration(
//                         border: InputBorder.none,
//                         counterText: '',
//                         hintText: "0",
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.02),
//               TextButton(
//                 onPressed: () {
//                   // Resend OTP action
//                 },
//                 child: Center(
//                   child:  Row(
//                     children: [
//                       Text(
//                         "OTP not received?",
//                         style: TextStyle(color: Colors.black),
//                       ),
//                       Text(" Resend now",style: TextStyle(color: Colors.blue),)
//                     ],
//                   ),
//
//                 ),
//               ),
//               SizedBox(height: screenHeight * 0.05),
//               Center(
//                 child: ElevatedButton(
//                   onPressed: () {
//
//                     Navigator.pop(context);
//
//                     // Handle Get OTP or Verify action
//                   },
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Color(0xFF333333),
//                     padding: EdgeInsets.symmetric(
//                       horizontal: screenWidth * 0.3,
//                       vertical: screenHeight * 0.02,
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   child: Text("Verify now",style: TextStyle(
//                     fontSize: screenWidth * 0.045,
//                     color: Colors.white,
//                   ),),
//                   // style: TextStyle(
//                   //     fontSize: screenWidth * 0.045,
//                   //     color: Colors.white,
//                   //   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   void _showEmailVerificationSheet() {
//     showModalBottomSheet<void>(
//       context: context,
//       isDismissible: false,
//       enableDrag: false,
//       builder: (BuildContext context) {
//         return Container(
//           height: 200,
//           color: Colors.white,
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               TextField(
//                 controller: mail,
//                 decoration: InputDecoration(
//                   labelText: "Enter email",
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               GestureDetector(
//                 onTap: () {
//                   if (mail.text.isNotEmpty) {
//                     Navigator.pop(context);
//                     _otp_verification(context);
//                   }
//                 },
//                 child: Container(
//                   height: 50,
//                   width: double.infinity,
//                   //color:  Color(0xff3C97D3),
//                   child: ElevatedButton(
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: Color(0xff3C97D3),
//                     ),
//                     onPressed: (){
//                       Navigator.pop(context);
//                       _otp_verification(context);
//
//                   },
//                     child:  Text(
//                       "Verify Email",
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedOpacity(
//       duration: Duration(milliseconds: 300),
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
//
//   Widget _buildSchoolIcon() {
//     return Text("");
//     // GestureDetector(
//     //   onTap: () => Navigator.push(
//     //     context,
//     //     MaterialPageRoute(builder: (context) => CountdownPage()),
//     //   ),
//     //   child: Container(
//     //     height: 50,
//     //     width: 50,
//     //     margin: const EdgeInsets.symmetric(vertical: 8),
//     //     decoration: BoxDecoration(
//     //       borderRadius: BorderRadius.circular(90),
//     //       color: const Color(0xFF5A9ECF),
//     //     ),
//     //     child: const Icon(Icons.school_outlined, color: Colors.white, size: 30),
//     //   ),
//     // );
//   }
//
//   Widget _buildPostCard(Map<String, String> post, BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       elevation: 4,
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             ListTile(
//               leading: const CircleAvatar(
//                 backgroundImage: AssetImage('assets/7.png'),
//                 radius: 30,
//               ),
//               title: Text(post['university']!),
//               subtitle: Text(post['location']!),
//             ),
//             const SizedBox(height: 8),
//             Text(
//               '${post['university']} Shines at',
//               style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//             const SizedBox(height: 4),
//             Text(
//               post['event']!,
//               style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//             ),
//             const Image(image: AssetImage("assets/post1.png")),
//             const SizedBox(height: 16),
//             Center(
//               child: SizedBox(
//                 height: 50,
//                 width: 300,
//                 child: ElevatedButton(
//                   onPressed: () => Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => SliverAppBarExample()),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFF5A9ECF),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(80),
//                     ),
//                   ),
//                   child: const Text(
//                     'Explore Now',
//                     style: TextStyle(color: Colors.white),
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

import 'package:flutter/material.dart';
import 'package:hive_application/Bottom%20Navigation%20Bar/Navigation%201.dart';
import 'package:lottie/lottie.dart';
import '../Countdown/CountDown.dart';
import 'HomePage_Without_email.dart';
import '../University/Screen_1.dart';

class BottomSheetApp extends StatefulWidget {
  BottomSheetApp({super.key});

  @override
  State<BottomSheetApp> createState() => _BottomSheetAppState();
}

class _BottomSheetAppState extends State<BottomSheetApp> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  final List<Map<String, String>> posts = List.generate(
      10,
      (index) => {
            'university': 'Mari State University',
            'location': 'Moscow, RU',
            'event': 'Indo-Russian Education Summit',
            'image': 'https://via.placeholder.com/150'
          });

  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // s
          body: PostsList(posts: posts),
          // floatingActionButton: FloatingActionButton(
          //   shape: const CircleBorder(),
          //   backgroundColor: const Color(0xFF5A9ECF),
          //   onPressed: () {
          //     Navigator.push(context, MaterialPageRoute(builder: (context) => CountdownPage()));
          //   },
          //   child: Container(
          //     height: screenWidth * 0.13,
          //     width: screenWidth * 0.13,
          //     margin: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(90),
          //       color: const Color(0xFF5A9ECF),
          //     ),
          //     child: Icon(
          //       Icons.school_outlined,
          //       color: Colors.white,
          //       size: screenWidth * 0.08,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

class PostsList extends StatefulWidget {
  final List<Map<String, String>> posts;

  const PostsList({super.key, required this.posts});

  @override
  _PostsListState createState() => _PostsListState();
}

class _PostsListState extends State<PostsList> {
  final TextEditingController mail = TextEditingController();
  double _opacity = 0.1;
  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showEmailVerificationSheet();
    });
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  void _onOtpChanged(String value, int index) {
    if (value.isNotEmpty && index < 3) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    } else if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

//=========================================================================
  void _otp_verification(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    showModalBottomSheet<void>(
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
              height: screenHeight * 0.40,
              width: screenWidth,
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
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "Enter OTP",
                        style: TextStyle(
                          fontSize: screenWidth * 0.055,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      Text(
                        "OTP sent to ",
                        style: TextStyle(
                          //fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.03,
                        ),
                      ),
                      Text(
                        "sample@gmail.com",
                        style: TextStyle(
                          color: Color(0xFF3C97D3),
                          fontSize: screenWidth * 0.03,
                        ),
                      ),
                      Icon(Icons.edit, size: screenWidth * 0.05),
                    ],
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
                            _onOtpChanged(value, index);
                          },
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: screenHeight * 0.0),
                  TextButton(
                    onPressed: () {
                      // Resend OTP action
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "OTP not received?",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        Text(
                          " Resend now",
                          style: TextStyle(
                            color: Color(0xFF3C97D3),
                            fontSize: screenWidth * 0.04,
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
//=========================================================================

  void _showEmailVerificationSheet() {
    final mediaQuery = MediaQuery.of(context);
    final screenHeight = mediaQuery.size.height;
    final screenWidth = mediaQuery.size.width;

    showModalBottomSheet<void>(
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
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(
                        30,
                      ),
                      topRight: Radius.circular(
                        30,
                      ))),
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        "Add Email",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  TextField(
                    controller: mail,
                    style: TextStyle(fontSize: screenWidth * 0.04),
                    decoration: InputDecoration(
                      labelText: "Enter email",
                      labelStyle: TextStyle(fontSize: screenWidth * 0.04),
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.circular(screenWidth * 0.025),
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
                        style: TextStyle(fontSize: 12),
                      )
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  GestureDetector(
                    onTap: () {
                      if (mail.text.isNotEmpty) {
                        Navigator.pop(context);
                        _otp_verification(context);
                      }
                    },
                    child: SizedBox(
                      height: screenHeight * 0.07,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
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
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  // void _showDoneAnimationSheet() {
  //   final mediaQuery = MediaQuery.of(context);
  //   final screenHeight = mediaQuery.size.height;
  //   final screenWidth = mediaQuery.size.width;

  //   showModalBottomSheet<void>(
  //     context: context,
  //     isDismissible: false,
  //     enableDrag: false,
  //     builder: (BuildContext context) {
  //       return Container(
  //         height: screenHeight * 0.2,
  //         decoration: const BoxDecoration(
  //             color: Colors.white,
  //             borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(
  //                   30,
  //                 ),
  //                 topRight: Radius.circular(
  //                   30,
  //                 ))),
  //         padding: EdgeInsets.all(screenWidth * 0.04),
  //         child: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: <Widget>[

  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }

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
                        builder: (context) => SliverAppBarExample()),
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
