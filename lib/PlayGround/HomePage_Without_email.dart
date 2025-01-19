//
// import 'package:flutter/material.dart';
// import '../Countdown/CountDown.dart';
// import '../University/Screen_1.dart';
//
// class Homepage_without_email extends StatelessWidget {
//
//   final List<Map<String, String>> posts = List.generate(10, (index) => {
//     'university': 'Mari State University',
//     'location': 'Moscow, RU',
//     'event': 'Indo-Russian Education Summit',
//     'image': 'https://via.placeholder.com/150'
//   });
//
//   Homepage_without_email({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenWidth = mediaQuery.size.width;
//
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         // appBar: AppBar(
//         //   title: Text(
//         //     'Bottom Sheet Sample',
//         //     style: TextStyle(fontSize: screenWidth * 0.05),
//         //   ),
//         // ),
//         body: PostsList(posts: posts),
//         floatingActionButton: FloatingActionButton(
//           shape: const CircleBorder(),
//           backgroundColor: const Color(0xFF5A9ECF),
//           onPressed: () {
//             Navigator.push(context, MaterialPageRoute(builder: (context) => CountdownPage()));
//           },
//           child: Container(
//             height: screenWidth * 0.13,
//             width: screenWidth * 0.13,
//             margin: EdgeInsets.symmetric(vertical: screenWidth * 0.02),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(90),
//               color: const Color(0xFF5A9ECF),
//             ),
//             child: Icon(
//               Icons.school_outlined,
//               color: Colors.white,
//               size: screenWidth * 0.08,
//             ),
//           ),
//         ),
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
//   final TextEditingController mail = TextEditingController();
//   double _opacity = 0.1;
//
//   @override
//   // void initState() {
//   //   super.initState();
//   //   WidgetsBinding.instance.addPostFrameCallback((_) {
//   //     _showEmailVerificationSheet();
//   //   });
//   //   Future.delayed(const Duration(milliseconds: 3000), () {
//   //     setState(() {
//   //       _opacity = 1.0;
//   //     });
//   //   });
//   // }
//
//   // void _otp_verification(BuildContext context) {
//   //   final mediaQuery = MediaQuery.of(context);
//   //   final screenHeight = mediaQuery.size.height;
//   //   final screenWidth = mediaQuery.size.width;
//   //
//   //   showModalBottomSheet<void>(
//   //     context: context,
//   //     isDismissible: false,
//   //     enableDrag: false,
//   //     shape: RoundedRectangleBorder(
//   //       borderRadius: BorderRadius.only(
//   //         topRight: Radius.circular(screenWidth * 0.08),
//   //         topLeft: Radius.circular(screenWidth * 0.08),
//   //       ),
//   //     ),
//   //     builder: (BuildContext context) {
//   //       return Container(
//   //         height: screenHeight * 0.6,
//   //         decoration: BoxDecoration(
//   //           color: Colors.white,
//   //           borderRadius: BorderRadius.only(
//   //             topRight: Radius.circular(screenWidth * 0.08),
//   //             topLeft: Radius.circular(screenWidth * 0.08),
//   //           ),
//   //         ),
//   //         padding: EdgeInsets.all(screenWidth * 0.04),
//   //         child: Column(
//   //           mainAxisSize: MainAxisSize.min,
//   //           children: <Widget>[
//   //             Text(
//   //               "Enter your OTP to verify.",
//   //               style: TextStyle(
//   //                 fontSize: screenWidth * 0.055,
//   //                 fontWeight: FontWeight.bold,
//   //                 color: Colors.black,
//   //               ),
//   //               textAlign: TextAlign.center,
//   //             ),
//   //             SizedBox(height: screenHeight * 0.04),
//   //             Row(
//   //               children: [
//   //                 Text(
//   //                   "OTP sent to ",
//   //                   style: TextStyle(
//   //                     fontWeight: FontWeight.bold,
//   //                     fontSize: screenWidth * 0.04,
//   //                   ),
//   //                 ),
//   //                 Text(
//   //                   "sample@gmail.com",
//   //                   style: TextStyle(
//   //                     color: Colors.blue,
//   //                     fontSize: screenWidth * 0.04,
//   //                   ),
//   //                 ),
//   //                 Icon(Icons.edit, size: screenWidth * 0.05),
//   //               ],
//   //             ),
//   //             SizedBox(height: screenHeight * 0.03),
//   //             Row(
//   //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//   //               children: List.generate(
//   //                 4,
//   //                     (index) => Container(
//   //                   width: screenWidth * 0.12,
//   //                   height: screenHeight * 0.08,
//   //                   alignment: Alignment.center,
//   //                   decoration: BoxDecoration(
//   //                     border: Border.all(color: Colors.black, width: 1),
//   //                     borderRadius: BorderRadius.circular(screenWidth * 0.02),
//   //                   ),
//   //                   child: TextField(
//   //                     textAlign: TextAlign.center,
//   //                     keyboardType: TextInputType.number,
//   //                     maxLength: 1,
//   //                     style: TextStyle(fontSize: screenWidth * 0.05),
//   //                     decoration: InputDecoration(
//   //                       border: InputBorder.none,
//   //                       counterText: '',
//   //                       hintText: "0",
//   //                       hintStyle: TextStyle(fontSize: screenWidth * 0.05),
//   //                     ),
//   //                   ),
//   //                 ),
//   //               ),
//   //             ),
//   //             SizedBox(height: screenHeight * 0.02),
//   //             TextButton(
//   //               onPressed: () {
//   //                 // Resend OTP action
//   //               },
//   //               child: Row(
//   //                 mainAxisAlignment: MainAxisAlignment.center,
//   //                 children: [
//   //                   Text(
//   //                     "OTP not received?",
//   //                     style: TextStyle(
//   //                       color: Colors.black,
//   //                       fontSize: screenWidth * 0.04,
//   //                     ),
//   //                   ),
//   //                   Text(
//   //                     " Resend now",
//   //                     style: TextStyle(
//   //                       color: Colors.blue,
//   //                       fontSize: screenWidth * 0.04,
//   //                     ),
//   //                   ),
//   //                 ],
//   //               ),
//   //             ),
//   //             SizedBox(height: screenHeight * 0.05),
//   //             ElevatedButton(
//   //               onPressed: () {
//   //                 Navigator.pop(context);
//   //               },
//   //               style: ElevatedButton.styleFrom(
//   //                 backgroundColor: const Color(0xFF333333),
//   //                 padding: EdgeInsets.symmetric(
//   //                   horizontal: screenWidth * 0.3,
//   //                   vertical: screenHeight * 0.02,
//   //                 ),
//   //                 shape: RoundedRectangleBorder(
//   //                   borderRadius: BorderRadius.circular(screenWidth * 0.02),
//   //                 ),
//   //               ),
//   //               child: Text(
//   //                 "Verify now",
//   //                 style: TextStyle(
//   //                   fontSize: screenWidth * 0.045,
//   //                   color: Colors.white,
//   //                 ),
//   //               ),
//   //             ),
//   //           ],
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }
//   //
//   // void _showEmailVerificationSheet() {
//   //   final mediaQuery = MediaQuery.of(context);
//   //   final screenHeight = mediaQuery.size.height;
//   //   final screenWidth = mediaQuery.size.width;
//   //
//   //   showModalBottomSheet<void>(
//   //     context: context,
//   //     isDismissible: false,
//   //     enableDrag: false,
//   //     builder: (BuildContext context) {
//   //       return Container(
//   //         height: screenHeight * 0.3,
//   //         color: Colors.white,
//   //         padding: EdgeInsets.all(screenWidth * 0.04),
//   //         child: Column(
//   //           mainAxisSize: MainAxisSize.min,
//   //           children: <Widget>[
//   //             TextField(
//   //               controller: mail,
//   //               style: TextStyle(fontSize: screenWidth * 0.04),
//   //               decoration: InputDecoration(
//   //                 labelText: "Enter email",
//   //                 labelStyle: TextStyle(fontSize: screenWidth * 0.04),
//   //                 border: OutlineInputBorder(
//   //                   borderRadius: BorderRadius.circular(screenWidth * 0.025),
//   //                 ),
//   //               ),
//   //             ),
//   //             SizedBox(height: screenHeight * 0.02),
//   //             GestureDetector(
//   //               onTap: () {
//   //                 if (mail.text.isNotEmpty) {
//   //                   Navigator.pop(context);
//   //                   _otp_verification(context);
//   //                 }
//   //               },
//   //               child: Container(
//   //                 height: screenHeight * 0.07,
//   //                 width: double.infinity,
//   //                 child: ElevatedButton(
//   //                   style: ElevatedButton.styleFrom(
//   //                     backgroundColor: const Color(0xff3C97D3),
//   //                   ),
//   //                   onPressed: () {
//   //                     Navigator.pop(context);
//   //                     _otp_verification(context);
//   //                   },
//   //                   child: Text(
//   //                     "Verify Email",
//   //                     style: TextStyle(
//   //                       color: Colors.white,
//   //                       fontSize: screenWidth * 0.05,
//   //                     ),
//   //                   ),
//   //                 ),
//   //               ),
//   //             ),
//   //           ],
//   //         ),
//   //       );
//   //     },
//   //   );
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;
//
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
//
//   Widget _buildSchoolIcon() {
//     return const Text("");
//   }
//
//   Widget _buildPostCard(Map<String, String> post, BuildContext context) {
//     final mediaQuery = MediaQuery.of(context);
//     final screenHeight = mediaQuery.size.height;
//     final screenWidth = mediaQuery.size.width;
//
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
//                     MaterialPageRoute(builder: (context) => SliverAppBarExample()),
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

import 'package:flutter/material.dart';
import '../Countdown/CountDown.dart';
import '../University/Screen_1.dart';

class HomepageWithoutEmail extends StatelessWidget {
  final List<Map<String, String>> posts = List.generate(10, (index) => {
    'university': 'Mari State University',
    'location': 'Moscow, RU',
    'event': 'Indo-Russian Education Summit',
    'image': 'https://via.placeholder.com/150'
  });

  HomepageWithoutEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(child: PostsList(posts: posts)),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF5A9ECF),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CountdownPage()));
          },
          child: const Icon(Icons.school_outlined, color: Colors.white),
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
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final screenHeight = constraints.maxHeight;

        return ListView.builder(
          itemCount: widget.posts.length,
          itemBuilder: (context, index) {
            final post = widget.posts[index];
            return _buildPostCard(post, screenWidth, screenHeight, context);
          },
        );
      },
    );
  }

  Widget _buildPostCard(Map<String, String> post, double screenWidth,
      double screenHeight, BuildContext context) {
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
                    MaterialPageRoute(builder: (context) => SliverAppBarExample()),
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
