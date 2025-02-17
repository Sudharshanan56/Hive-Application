// import 'package:flutter/material.dart';
// import '../Countdown/CountDown.dart';
// import '../University/Screen_1.dart';

// class BottomSheetApp_Animated extends StatelessWidget {
//   final List<Map<String, String>> posts = List.generate(10, (index) => {
//     'university': 'Mari State University',
//     'location': 'Moscow, RU',
//     'event': 'Indo-Russian Education Summit',
//     'image': 'https://via.placeholder.com/150'
//   });

//   BottomSheetApp_Animated({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text('Bottom Sheet Sample')),
//         body: PostsList(posts: posts),
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
//   final TextEditingController mail = TextEditingController();
//   double _opacity = 0.1;

//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _showEmailVerificationSheet();
//     });
//     // Delay to transition opacity to full (1.0)
//     Future.delayed(const Duration(milliseconds: 300), () {
//       setState(() {
//         _opacity = 1.0;
//       });
//     });
//   }

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
//                   labelStyle: TextStyle(
//                     fontSize: 20,
//                   ),
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
//                   }
//                 },
//                 child: Container(
//                   height: 50,
//                   width: double.infinity,
//                   color: const Color(0xff3C97D3),
//                   child: const Center(
//                     child: Text(
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

//   @override
//   Widget build(BuildContext context) {
//     return AnimatedOpacity(
//       duration: const Duration(milliseconds: 300),
//       opacity: _opacity, // Bind opacity value
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
//     return GestureDetector(
//       onTap: () => Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => CountdownPage()),
//       ),
//       child: Container(
//         height: 50,
//         width: 50,
//         margin: const EdgeInsets.symmetric(vertical: 8),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(90),
//           color: const Color(0xFF5A9ECF),
//         ),
//         child: const Icon(Icons.school_outlined, color: Colors.white, size: 30),
//       ),
//     );
//   }

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
//                     MaterialPageRoute(builder: (context) => SliverAppBarExample(
//                       profileImage: post['profileImage']!, // Pass profile image
//             postImage: post['postImage']!,       // Pass post image
//             title: post['title']!,               // Pass title
//             description: post['description']!,
//                     )),
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
