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
import 'package:hive_application/Search%20Page/Search%20page.dart';
import 'package:like_button/like_button.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import '../Countdown/CountDown.dart';
import '../Profile Page/Profile_1.dart';
import '../University/Screen_1.dart';

class HomepageWithoutEmail extends StatefulWidget {
  HomepageWithoutEmail({super.key});

  @override
  State<HomepageWithoutEmail> createState() => _HomepageWithoutEmailState();
}

class _HomepageWithoutEmailState extends State<HomepageWithoutEmail> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showDoneBottomSheet();
    });
  }

  void _showDoneBottomSheet() {
    final size = MediaQuery.of(context).size;
    showModalBottomSheet(
      context: context,
      isDismissible: false, // Prevent user from dismissing manually
      enableDrag: false, // Disable dragging to close
      builder: (context) {
        return SizedBox(
          height: size.height * 0.33,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: size.height * 0.05),
                  child: Center(
                      child: Text(
                    "All Done!",
                    style: TextStyle(
                        fontSize: size.width * 0.06,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Lottie.asset(
                  'assets/done_1.json', // Add your Lottie animation in assets
                  width: size.width * 0.5,
                  height: size.width * 0.5,
                  repeat: false,
                ),
              ],
            ),
          ),
        );
      },
    );

    // Auto-close bottom sheet after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pop(context);
      }
    });
  }

  final List<Map<String, String>> posts = List.generate(
      10,
      (index) => {
            'university': 'Mari State University',
            'location': 'Moscow, RU',
            'event': 'Indo-Russian Education Summit',
            'image': 'https://via.placeholder.com/150'
          });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xFFFBFBFB),
          appBar: AppBar(
            backgroundColor: Color(0xFFFCFEFF),
            scrolledUnderElevation: 0, // Add this line
            elevation: 0,
            toolbarHeight: screenHeight * 0.10,
            leading: Padding(
              padding: EdgeInsets.only(left: 14),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage()));
                },
                child: Container(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/person.png"),
                    radius: screenWidth * 0.70,
                  ),
                ),
              ),
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchPage()),
                );
              },
              child: Container(
                height: screenHeight * 0.06,
                width: screenWidth * 0.75,
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffF1F1F1)),
                    borderRadius: BorderRadius.circular(30),
                    color: Color(0xFFF1F1F1)),
                child: ListTile(
                  leading: Icon(Icons.search_outlined),
                  title: Text('Search'),
                ),
                // child: TextField(
                //   readOnly: true,
                //   decoration: InputDecoration(
                //     hintText: 'Search...',
                //     fillColor: Colors.grey[200],
                //     filled: true,
                //     prefixIcon: Icon(Icons.search),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(30),
                //       borderSide: BorderSide.none,
                //     ),
                //     contentPadding: EdgeInsets.zero,
                //   ),
                // ),
              ),
            ),
          ),
          body: SafeArea(child: PostsList(posts: posts)),
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 80),
            child: FloatingActionButton(
              shape: CircleBorder(),
              backgroundColor: const Color(0xFF5A9ECF),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CountdownPage()));
              },
              child: const Icon(Icons.school, size: 40, color: Colors.white),
            ),
          ),
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
  List<bool> isLikedList = [];

  @override
  void initState() {
    super.initState();
    isLikedList = List<bool>.filled(widget.posts.length, false);
  }

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
            return _buildPostCard(
                post, screenWidth, screenHeight, context, index);
          },
        );
      },
    );
  }

  Widget _buildPostCard(Map<String, String> post, double screenWidth,
      double screenHeight, BuildContext context, int index) {
    // bool isLiked = false;

    // void toggleLike() {
    //   setState(() {
    //     isLiked = !isLiked;
    //   });
    // }

    return Container(
        decoration: BoxDecoration(color: Color(0xFFFFFFFF)),
        margin: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.01,
        ),
        // shape: RoundedRectangleBorder(
        //   borderRadius: BorderRadius.circular(screenWidth * 0.03),
        // ),
        //  elevation: 4,
        child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.0),
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // height: 0,
                    // decoration: BoxDecoration(border: Border.all()),
                    child: ListTile(
                      contentPadding:
                          EdgeInsets.only(left: 0), // Moves it to the left

                      leading: Container(
                        // decoration: BoxDecoration(border: Border.all()),
                        child: CircleAvatar(
                          backgroundImage: const AssetImage('assets/7.png'),
                          radius: screenWidth * 0.075,
                        ),
                      ),
                      title: Text(
                        post['university']!,
                        style: TextStyle(fontSize: screenWidth * 0.037),
                      ),
                      subtitle: Text(
                        post['location']!,
                        style: TextStyle(fontSize: screenWidth * 0.03),
                      ),
                      trailing: Container(
                          height: screenHeight * 0.04,
                          width: screenWidth * 0.10,
                          // decoration: BoxDecoration(border: Border.all()),
                          child: Image.asset("assets/vector.png")),
                      // Positioned(
                      //   top: 100,
                      //   child: Icon(
                      //     Icons.screen_share_rounded,
                      //     // color: Colors.white,
                      //   ),
                      // ),
                    ),
                  ),
                  // SizedBox(height: screenHeight * 0.0),
                  Row(
                    children: [
                      Text(
                        '${post['university']} Shines at',
                        style: TextStyle(
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      // Container(
                      //     height: screenHeight * 0.04,
                      //     width: screenWidth * 0.10,
                      //     // decoration: BoxDecoration(border: Border.all()),
                      //     child: Image.asset("assets/vector.png")),
                    ],
                  ),
                  // SizedBox(height: screenHeight * 0.001),
                  Row(
                    children: [
                      Text(post['event']!,
                          style: TextStyle(
                              fontSize: screenWidth * 0.038,
                              // fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ],
                  ),

                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  Hero(
                      tag: "post1",
                      child: Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.02,
                          bottom: screenWidth * 0.02,
                        ),
                        child: Center(
                          child: Container(
                              height: screenHeight * 0.30,
                              width: screenWidth * 0.7,
                              // decoration: BoxDecoration(border: Border.all()),
                              child: Image(
                                image: AssetImage("assets/post1.png"),
                                fit: BoxFit.fill,
                              )),
                        ),
                      )),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      SizedBox(
                        height: screenHeight * 0.07,
                        width: screenWidth * 0.78,
                        child: ElevatedButton(
                          onPressed: () =>
                              //     Navigator.push(
                              //   context,
                              //   MaterialPageRoute(builder: (context) => SliverAppBarExample()),
                              // ),
                              Navigator.push(
                            context,
                            PageTransition(
                                type: PageTransitionType.bottomToTop,
                                child: SliverAppBarExample(),
                                duration: const Duration(milliseconds: 300)),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF5A9ECF),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(screenWidth * 0.2),
                            ),
                          ),
                          child: FittedBox(
                            fit: BoxFit.contain,
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
                      Spacer(),
                      // Align(
                      //   alignment: Alignment.centerRight,
                      //   child: SizedBox(
                      //     height: screenHeight * 0.07,
                      //     width: screenWidth * 0.10,
                      //     child: IconButton(
                      //       iconSize: screenWidth * 0.1,
                      //       icon: Icon(
                      //         isLikedList[index]
                      //              Icons.favorite
                      //             : Icons.favorite_border,
                      //         color:
                      //             isLikedList[index] ? Colors.red : Color(0xFF666666),
                      //       ),
                      //       onPressed: () {
                      //         setState(() {
                      //           isLikedList[index] = !isLikedList[index];
                      //         });
                      //       },
                      //     ),
                      //   ),
                      // ),
                      // Example usage in a widget

                      LikeButton(
                        size: screenWidth * 0.07, // Optional: customize size
                        initialState:
                            false, // Optional: set initial liked state
                        onTap: (isLiked) {
                          // Optional: handle tap event
                          print('Liked state: $isLiked');
                        },
                      ),
                      SizedBox(
                        width: screenWidth * .04,
                      )
                    ],
                  ),
                ])));
  }
}
// import 'package:flutter/material.dart';

class LikeButton extends StatefulWidget {
  final double size;
  final Function(bool)? onTap;
  final bool initialState;

  const LikeButton({
    Key? key,
    this.size = 24.0,
    this.onTap,
    this.initialState = false,
  }) : super(key: key);

  @override
  State<LikeButton> createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton>
    with SingleTickerProviderStateMixin {
  late bool isLiked;
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    isLiked = widget.initialState;

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _scaleAnimation = TweenSequence<double>([
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.0, end: 1.2),
        weight: 50,
      ),
      TweenSequenceItem(
        tween: Tween<double>(begin: 1.2, end: 1.0),
        weight: 50,
      ),
    ]).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleLike() {
    setState(() {
      isLiked = !isLiked;
      if (isLiked) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
    widget.onTap?.call(isLiked);
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _toggleLike,
      child: AnimatedBuilder(
        animation: _scaleAnimation,
        builder: (context, child) {
          return Transform.scale(
            scale: _scaleAnimation.value,
            child: Icon(
              isLiked ? Icons.favorite : Icons.favorite_border,
              size: widget.size,
              color: isLiked ? Colors.red : Colors.grey,
            ),
          );
        },
      ),
    );
  }
}
