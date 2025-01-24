// // import 'package:flutter/material.dart';

// // class ReplyPopupExample extends StatefulWidget {
// //   const ReplyPopupExample({super.key});

// //   @override
// //   _ReplyPopupExampleState createState() => _ReplyPopupExampleState();
// // }

// // class _ReplyPopupExampleState extends State<ReplyPopupExample> {
// //   // Controller for the reply text field
// //   final TextEditingController _replyController = TextEditingController();

// //   // Function to show reply popup
// //   void _showReplyPopup(BuildContext context, String userName) {
// //     showModalBottomSheet(
// //       context: context,
// //       isScrollControlled: true,
// //       shape: const RoundedRectangleBorder(
// //         borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
// //       ),
// //       builder: (context) {
// //         return Padding(
// //           padding: EdgeInsets.only(
// //             bottom: MediaQuery.of(context).viewInsets.bottom,
// //             left: 16,
// //             right: 16,
// //             top: 16,
// //           ),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: [
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   Text(
// //                     userName,
// //                     style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
// //                   ),
// //                   IconButton(
// //                     icon: const Icon(Icons.close),
// //                     onPressed: () => Navigator.of(context).pop(),
// //                   ),
// //                 ],
// //               ),
// //               TextField(
// //                 controller: _replyController,
// //                 decoration: InputDecoration(
// //                   hintText: "Reply here...",
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(10),
// //                   ),
// //                 ),
// //                 maxLines: null,
// //               ),
// //               const SizedBox(height: 16),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   // Handle reply action here
// //                   print("Reply: ${_replyController.text}");
// //                   Navigator.of(context).pop(); // Close the popup
// //                 },
// //                 child: const Text("Post"),
// //               ),
// //             ],
// //           ),
// //         );
// //       },
// //     );
// //   }

// //   @override
// //   void dispose() {
// //     _replyController.dispose();
// //     super.dispose();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: const Text('Reply Popup Example'),
// //       ),
// //       body: ListView(
// //         padding: const EdgeInsets.all(16),
// //         children: [
// //           _buildCommentCard(
// //             userName: "Sanjay",
// //             comment:
// //             "This article highlights such promising advancements. AI in diagnostics sounds fascinating, early detection can truly save lives!",
// //           ),
// //           _buildCommentCard(
// //             userName: "Krishna",
// //             comment:
// //             "AI in diagnostics is indeed a game-changer! Early detection has the potential to revolutionize healthcare and save countless lives.",
// //           ),
// //         ],
// //       ),
// //     );
// //   }

// //   // Function to build each comment card
// //   Widget _buildCommentCard({required String userName, required String comment}) {
// //     return Card(
// //       elevation: 4,
// //       margin: const EdgeInsets.symmetric(vertical: 8),
// //       child: Padding(
// //         padding: const EdgeInsets.all(12.0),
// //         child: Column(
// //           crossAxisAlignment: CrossAxisAlignment.start,
// //           children: [
// //             Text(
// //               userName,
// //               style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
// //             ),
// //             const SizedBox(height: 8),
// //             Text(comment),
// //             const SizedBox(height: 12),
// //             Row(
// //               mainAxisAlignment: MainAxisAlignment.end,
// //               children: [
// //                 ElevatedButton(
// //                   onPressed: () => _showReplyPopup(context, userName),
// //                   child: const Text("Reply"),
// //                 ),
// //               ],
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: CommentsPage(),
//   ));
// }

// class CommentsPage extends StatefulWidget {
//   const CommentsPage({Key? key}) : super(key: key);

//   @override
//   State<CommentsPage> createState() => _CommentsPageState();
// }

// class _CommentsPageState extends State<CommentsPage> {
//   // Track which comment has an active reply box
//   int? activeReplyIndex;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: const Text('Comments'),
//       ),
//       body: ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemCount: comments.length,
//         itemBuilder: (context, index) {
//           return Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               _buildCommentTile(index),
//               if (activeReplyIndex == index) _buildReplyBox(index),
//               const Divider(),
//             ],
//           );
//         },
//       ),
//     );
//   }

//   Widget _buildCommentTile(int index) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             CircleAvatar(
//               child: Text(comments[index]['author']![0]),
//             ),
//             const SizedBox(width: 10),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     comments[index]['author']!,
//                     style: const TextStyle(
//                         fontWeight: FontWeight.bold, fontSize: 16),
//                   ),
//                   const SizedBox(height: 5),
//                   Text(comments[index]['content']!),
//                 ],
//               ),
//             ),
//           ],
//         ),
//         const SizedBox(height: 10),
//         Row(
//           children: [
//             IconButton(
//               icon: const Icon(Icons.favorite_border),
//               onPressed: () {},
//             ),
//             TextButton(
//               onPressed: () {
//                 setState(() {
//                   activeReplyIndex =
//                       (activeReplyIndex == index) ? null : index; // Toggle reply box
//                 });
//               },
//               child: const Text('Reply'),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildReplyBox(int index) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         children: [
//           const CircleAvatar(
//             child: Icon(Icons.person),
//           ),
//           const SizedBox(width: 10),
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Reply here...',
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20),
//                   borderSide: BorderSide.none,
//                 ),
//               ),
//             ),
//           ),
//           IconButton(
//             icon: const Icon(Icons.send, color: Colors.blue),
//             onPressed: () {
//               setState(() {
//                 activeReplyIndex = null; // Close the reply box
//               });
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// // Mock comments data
// List<Map<String, String>> comments = [
//   {
//     'author': 'Sanjay',
//     'content':
//         'This article highlights such promising advancements. AI in diagnostics sounds fascinating!'
//   },
//   {
//     'author': 'Maria T',
//     'content': 'Early detection can truly save lives!'
//   },
// ];
import 'package:flutter/material.dart';

void main() {
  runApp(const CommentApp());
}

class CommentApp extends StatelessWidget {
  const CommentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CommentScreen(),
    );
  }
}

class CommentScreen extends StatefulWidget {
  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  int? activeReplyIndex; // Tracks which comment's reply box is active
  final TextEditingController _replyController = TextEditingController();

  final List<Map<String, dynamic>> comments = [
    {"username": "Maria T", "comment": "Type something..."},
    {
      "username": "Sanjay",
      "comment":
          "This article highlights such promising advancements. AI in diagnostics sounds fascinating; early detection can truly save lives!"
    },
    {
      "username": "Krishna",
      "comment":
          "AI in diagnostics is indeed a game-changer! Early detection has the potential to revolutionize healthcare and save countless lives. Exciting times ahead for medical advancements!"
    },
  ];

  void toggleReplyBox(int index) {
    setState(() {
      if (activeReplyIndex == index) {
        activeReplyIndex = null; // Close the reply box if already open
      } else {
        activeReplyIndex = index; // Open the reply box for the selected comment
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Comments"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: comments.length,
          itemBuilder: (context, index) {
            final comment = comments[index];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/avatar.png'),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            comment["username"],
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            comment["comment"],
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: () => toggleReplyBox(index),
                      icon: const Icon(Icons.reply),
                    ),
                  ],
                ),
                if (activeReplyIndex == index) // Show reply box for active index
                  Container(
                    margin: const EdgeInsets.only(left: 40, top: 10),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        TextField(
                          controller: _replyController,
                          decoration: const InputDecoration(
                            hintText: "Reply here...",
                            border: InputBorder.none,
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                activeReplyIndex = null; // Close reply box
                              });
                              _replyController.clear(); // Clear input
                            },
                            child: const Text(
                              "Post",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                const Divider(thickness: 1),
              ],
            );
          },
        ),
      ),
    );
  }
}
