// // import 'package:flutter/material.dart';
// //
// //
// //
// // class PopularTopicsScreen extends StatelessWidget {
// //   const PopularTopicsScreen({Key? key}) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.blue[50],
// //       body: SafeArea(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               // Title
// //               Text(
// //                 'Asia International University',
// //                 style: TextStyle(
// //                   fontSize: 18,
// //                   fontWeight: FontWeight.bold,
// //                   color: Colors.black,
// //                 ),
// //               ),
// //               const SizedBox(height: 4),
// //               Text(
// //                 'Popular Topics',
// //                 style: TextStyle(
// //                   fontSize: 14,
// //                   color: Colors.grey[700],
// //                 ),
// //               ),
// //               const SizedBox(height: 16),
// //
// //               // Card Section
// //               Container(
// //                 decoration: BoxDecoration(
// //                   color: Colors.white,
// //                   borderRadius: BorderRadius.circular(16),
// //                   boxShadow: [
// //                     BoxShadow(
// //                       color: Colors.black.withOpacity(0.1),
// //                       blurRadius: 8,
// //                       offset: Offset(0, 4),
// //                     ),
// //                   ],
// //                 ),
// //                 child: Column(
// //                   children: [
// //                     // Image Section
// //                     Stack(
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.vertical(
// //                             top: Radius.circular(16),
// //                           ),
// //                           child: Image.asset("assets/person.png")
// //                         ),
// //                         Positioned(
// //                           bottom: 16,
// //                           left: 16,
// //                           child: Text(
// //                             'plans in the field of investment',
// //                             style: TextStyle(
// //                               fontSize: 16,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.white,
// //                               shadows: [
// //                                 Shadow(
// //                                   color: Colors.black.withOpacity(0.5),
// //                                   blurRadius: 4,
// //                                 ),
// //                               ],
// //                             ),
// //                           ),
// //                         ),
// //                       ],
// //                     ),
// //                     const SizedBox(height: 16),
// //
// //                     // Stats Section
// //                     Padding(
// //                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
// //                       child: Column(
// //                         children: [
// //                           // Total Views
// //                           Text(
// //                             'Total Views',
// //                             style: TextStyle(
// //                               fontSize: 14,
// //                               color: Colors.grey[700],
// //                             ),
// //                           ),
// //                           const SizedBox(height: 4),
// //                           Text(
// //                             '246',
// //                             style: TextStyle(
// //                               fontSize: 24,
// //                               fontWeight: FontWeight.bold,
// //                               color: Colors.black,
// //                             ),
// //                           ),
// //                           const SizedBox(height: 4),
// //                           Text(
// //                             'Total Views Across All Articles',
// //                             style: TextStyle(
// //                               fontSize: 12,
// //                               color: Colors.grey[500],
// //                             ),
// //                           ),
// //                           const SizedBox(height: 16),
// //
// //                           // Articles and Last Update Row
// //                           Row(
// //                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                             children: [
// //                               // Articles
// //                               StatCard(
// //                                 label: 'Articles',
// //                                 value: '12',
// //                                 description: 'Articles Published',
// //                                 color: Colors.pink[100]!,
// //                               ),
// //                               // Last Update
// //                               StatCard(
// //                                 label: 'Last update',
// //                                 value: '28th Dec',
// //                                 description: '10:46 pm',
// //                                 color: Colors.blue[100]!,
// //                               ),
// //                             ],
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                     const SizedBox(height: 16),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
// //
// // class StatCard extends StatelessWidget {
// //   final String label;
// //   final String value;
// //   final String description;
// //   final Color color;
// //
// //   const StatCard({
// //     Key? key,
// //     required this.label,
// //     required this.value,
// //     required this.description,
// //     required this.color,
// //   }) : super(key: key);
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 140,
// //       padding: const EdgeInsets.all(12.0),
// //       decoration: BoxDecoration(
// //         color: color,
// //         borderRadius: BorderRadius.circular(12),
// //       ),
// //       child: Column(
// //         crossAxisAlignment: CrossAxisAlignment.start,
// //         children: [
// //           Text(
// //             label,
// //             style: TextStyle(
// //               fontSize: 12,
// //               fontWeight: FontWeight.bold,
// //               color: Colors.black,
// //             ),
// //           ),
// //           const SizedBox(height: 4),
// //           Text(
// //             value,
// //             style: TextStyle(
// //               fontSize: 20,
// //               fontWeight: FontWeight.bold,
// //               color: Colors.black,
// //             ),
// //           ),
// //           const SizedBox(height: 4),
// //           Text(
// //             description,
// //             style: TextStyle(
// //               fontSize: 12,
// //               color: Colors.grey[700],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'package:like_button/like_button.dart';

// class SliverAppBarExample extends StatefulWidget {
//   const SliverAppBarExample({super.key});

//   @override
//   State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
// }

// class _SliverAppBarExampleState extends State<SliverAppBarExample> {
//   String? replyingTo; // Stores the name of the person being replied to

//   List<Map<String, String>> comments = [
//     {
//       'name': 'Sanjay',
//       'comment':
//           'This article highlights such promising advancements. AI in diagnostics sounds fascinating early detection can truly save lives!'
//     },
//     {
//       'name': 'Krishna',
//       'comment':
//           'AI in diagnostics is indeed a game-changer! Early detection has the potential to revolutionize healthcare and save countless lives. Exciting times ahead for medical advancements!'
//     },
//   ];

//   final TextEditingController replyController = TextEditingController();

//   void showReplyBox(String name) {
//     setState(() {
//       replyingTo = name;
//     });
//   }

//   void postReply() {
//     if (replyController.text.isNotEmpty) {
//       setState(() {
//         comments.add({
//           'name': 'You',
//           'comment': replyController.text,
//         });
//         replyController.clear();
//         replyingTo = null; // Hide reply box after posting
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 300.0, // Height of the expanded app bar
//             floating: false, // App bar does not float
//             pinned: true, // App bar remains visible when scrolling
//             flexibleSpace: FlexibleSpaceBar(
//               background: Hero(
//                 tag: "post1", // Unique tag for the image
//                 child: Container(
//                   width: double.infinity,
//                   child: Image.asset(
//                     "assets/person.png", // Replace with your image asset path
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ),
//             // leading: Padding(
//             //   padding: const EdgeInsets.all(16.0),
//             //   child: CircleAvatar(
//             //       backgroundColor: Color(0xFF1D1D1D66),
//             //       child: IconButton(
//             //         onPressed: () {},
//             //         icon: Icon(Icons.arrow_back_ios),
//             //         color: Colors.white,
//             //       )),
//             // ),
//             // actions: [
//             //   IconButton(
//             //     icon: const Icon(Icons.search),
//             //     onPressed: () {
//             //       // Action for the search button
//             //     },
//             //   ),
//             //   IconButton(
//             //     icon: const Icon(Icons.more_vert),
//             //     onPressed: () {
//             //       // Action for the more button
//             //     },
//             //   ),
//             // ],
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//               (BuildContext context, int index) {
//                 return Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Container(
//                     // decoration: BoxDecoration(
//                     //   border: Border.all(color: Colors.red),
//                     // ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         // Tags Section
//                         Row(
//                           children: [
//                             _buildTag('Tags'),
//                             const SizedBox(width: 8),
//                             _buildTag('Tags'),
//                             Spacer(),
//                             LikeButton(),
//                             SizedBox(width: 8),
//                           ],
//                         ),
//                         const SizedBox(height: 16),

//                         // Header Section with Icon and Title
//                         Row(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Circular Logo/Icon
//                             CircleAvatar(
//                                 backgroundColor: Colors.blue[50],
//                                 radius: 24,
//                                 child: Image.asset("assets/7.png")),
//                             const SizedBox(width: 12),
//                             // Title Section
//                             const Expanded(
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Text(
//                                     'Asia International University',
//                                     style: TextStyle(
//                                       fontSize: 16,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                   SizedBox(height: 4),
//                                   Text(
//                                     'plans in the field of investment',
//                                     style: TextStyle(
//                                       fontSize: 20,
//                                       fontWeight: FontWeight.bold,
//                                       color: Colors.black,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                             // Delete Icon
//                             // IconButton(
//                             //   icon: const Icon(Icons.delete, color: Colors.grey),
//                             //   onPressed: () {
//                             //     _delete(context);
//                             //     // Add delete functionality here
//                             //   },
//                             // ),
//                           ],
//                         ),
//                         const SizedBox(height: 16),

//                         // Subtitle
//                         Text(
//                           'Meeting on 2024 Investment Plans',
//                           style: TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             color: Colors.grey[700],
//                           ),
//                         ),
//                         const SizedBox(height: 16),

//                         // Body Paragraph
//                         Text(
//                           'On December 19, President Shavkat Mirziyoyev held a meeting to review 2024 investment outcomes and set tasks for the upcoming year. Since 2017, 188 billion in investments have been made, including 87 billion in foreign investments, boosting GDP growth with investments now exceeding 30% of GDP.\n\n'
//                           'In 2023, investments grew by 1.3 times to 36 billion, launching 560 projects worth 70 trillion soums and creating opportunities to increase exports by 1 billion next year. For 2024, 43 billion in investments and over 300 major projects are planned, including 662 import-substitution products.\n\n'
//                           'President Mirziyoyev emphasized creating favorable conditions for foreign investors, expediting ongoing projects, and addressing export logistics challenges amid global difficulties. The goal is to double annual exports to 45 billion by 2030 by increasing high-value products and services and expanding export markets.',
//                           style: TextStyle(
//                             fontSize: 24,
//                             color: Colors.grey[800],
//                             height: 1.5,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 );
//               },

//               childCount: 1, // Number of items in the list
//             ),
//           ),
//           SliverToBoxAdapter(
//             child: Column(
//               children: [
//                 // Top Comment Box
//                 Container(
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(10),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade300,
//                         blurRadius: 5,
//                         offset: const Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Row(
//                     children: [
//                       const CircleAvatar(
//                         radius: 20,
//                         backgroundImage:
//                             AssetImage('assets/profile_placeholder.png'),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: TextField(
//                           decoration: const InputDecoration(
//                             hintText: 'Type something...',
//                             border: InputBorder.none,
//                           ),
//                         ),
//                       ),
//                       TextButton(
//                         onPressed: () {}, // Add post comment logic
//                         style: TextButton.styleFrom(
//                           foregroundColor: Colors.blue,
//                           backgroundColor: Colors.grey.shade200,
//                         ),
//                         child: const Text('Post'),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 15),

//                 // Comments List
//                 Expanded(
//                   child: ListView.builder(
//                     itemCount: comments.length,
//                     itemBuilder: (context, index) {
//                       return Container(
//                         margin: const EdgeInsets.only(bottom: 10),
//                         padding: const EdgeInsets.all(12),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             // Comment Author
//                             Row(
//                               children: [
//                                 const CircleAvatar(
//                                   radius: 15,
//                                   backgroundImage: AssetImage(
//                                       'assets/profile_placeholder.png'),
//                                 ),
//                                 const SizedBox(width: 10),
//                                 Text(
//                                   comments[index]['name']!,
//                                   style: const TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(height: 5),

//                             // Comment Text
//                             Text(
//                               comments[index]['comment']!,
//                               style: const TextStyle(fontSize: 14),
//                             ),
//                             const SizedBox(height: 10),

//                             // Like & Reply Buttons
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Row(
//                                   children: [
//                                     IconButton(
//                                       icon: const Icon(Icons.favorite_border,
//                                           size: 18),
//                                       onPressed:
//                                           () {}, // Add like functionality
//                                     ),
//                                     IconButton(
//                                       icon: const Icon(Icons.share, size: 18),
//                                       onPressed:
//                                           () {}, // Add share functionality
//                                     ),
//                                   ],
//                                 ),
//                                 TextButton(
//                                   onPressed: () {
//                                     showReplyBox(comments[index]['name']!);
//                                   },
//                                   style: TextButton.styleFrom(
//                                     foregroundColor: Colors.blue,
//                                   ),
//                                   child: const Text('Reply'),
//                                 ),
//                               ],
//                             ),

//                             // Reply Box (Visible when reply button is clicked)
//                             if (replyingTo == comments[index]['name'])
//                               Padding(
//                                 padding: const EdgeInsets.only(top: 10),
//                                 child: Container(
//                                   padding: const EdgeInsets.all(8),
//                                   decoration: BoxDecoration(
//                                     color: Colors.grey.shade100,
//                                     borderRadius: BorderRadius.circular(10),
//                                   ),
//                                   child: Column(
//                                     children: [
//                                       Row(
//                                         children: [
//                                           const CircleAvatar(
//                                             radius: 15,
//                                             backgroundImage: AssetImage(
//                                                 'assets/profile_placeholder.png'),
//                                           ),
//                                           const SizedBox(width: 10),
//                                           Expanded(
//                                             child: TextField(
//                                               controller: replyController,
//                                               decoration: InputDecoration(
//                                                 hintText:
//                                                     'Replying to $replyingTo...',
//                                                 border: InputBorder.none,
//                                               ),
//                                             ),
//                                           ),
//                                           TextButton(
//                                             onPressed: postReply,
//                                             style: TextButton.styleFrom(
//                                               foregroundColor: Colors.blue,
//                                             ),
//                                             child: const Text('Post'),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                           ],
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _delete(BuildContext context) {
//     showModalBottomSheet(
//       context: context,
//       shape: const RoundedRectangleBorder(
//         borderRadius: BorderRadius.vertical(
//           top: Radius.circular(16),
//         ),
//       ),
//       builder: (context) {
//         return Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const Text(
//                 'Delete Account',
//                 style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Delete your account and data permanently.',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.grey[600],
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.red,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 onPressed: () {
//                   // Handle Delete Action
//                   Navigator.pop(context);
//                 },
//                 child: const Text(
//                   'Delete',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 12),
//               OutlinedButton(
//                 style: OutlinedButton.styleFrom(
//                   minimumSize: const Size(double.infinity, 50),
//                   side: const BorderSide(color: Colors.grey),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 child: Text(
//                   'Cancel',
//                   style: TextStyle(
//                     color: Colors.grey[600],
//                     fontSize: 16,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }

//   // Helper Widget for Tags
//   Widget _buildTag(String text) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.blue[50],
//         borderRadius: BorderRadius.circular(16),
//       ),
//       child: Text(
//         text,
//         style: const TextStyle(
//           fontSize: 12,
//           color: Colors.blue,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  // List of comments
  List<Map<String, dynamic>> comments = [
    {
      'name': 'Sanjay',
      'comment': 'This article highlights such promising advancements.',
      'replies': [],
    },
    {
      'name': 'Krishna',
      'comment': 'AI in diagnostics is indeed a game-changer!',
      'replies': [],
    },
  ];
  final TextEditingController commentController = TextEditingController();
  final TextEditingController replyController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    commentController.addListener(() {
      setState(() {}); // Rebuild UI when text changes
    });
    replyController.addListener(() {
      setState(() {});
    });
  }

  // Controllers for text fields

  // Tracks the index of the comment being replied to
  int? replyingToIndex;

  // Add a new comment
  void postComment() {
    if (commentController.text.isNotEmpty) {
      setState(() {
        comments.add({
          'name': 'You',
          'comment': commentController.text,
          'replies': [],
        });
        commentController.text.isEmpty ? Colors.grey : Color(0xFF3C97D3);
        commentController.clear(); // Clear the input field
      });
    }
  }

  // Show reply box for a specific comment
  void showReplyBox(int index) {
    setState(() {
      replyingToIndex = index;
    });
  }

  @override
  void dispose() {
    commentController.dispose();
    replyController.dispose(); // Dispose of replyController as well
    super.dispose();
  }

  // Post a reply to a specific comment
  void postReply() {
    if (replyController.text.isNotEmpty && replyingToIndex != null) {
      setState(() {
        comments[replyingToIndex!]['replies'].add({
          'name': 'You',
          'comment': replyController.text,
        });
        replyController.clear(); // Clear the input field
        replyingToIndex = null; // Hide the reply box
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF),
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            expandedHeight: 300.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "post1",
                child: Container(
                  width: double.infinity,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Image.asset(
                    "assets/person.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          // Main Content
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(90),
                      topRight: Radius.circular(90),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        // border: Border.all(color: Colors.red),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Tags Section
                            Row(
                              children: [
                                _buildTag('Tags'),
                                SizedBox(width: 8),
                                _buildTag('Tags'),
                                const Spacer(),
                                LikeButton(),
                                SizedBox(width: 8),
                              ],
                            ),
                            SizedBox(height: 16),

                            // Header Section
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.blue[50],
                                  radius: 24,
                                  child: Image.asset("assets/7.png"),
                                ),
                                SizedBox(width: 12),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Asia International University',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        'plans in the field of investment',
                                        style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 16),

                            // Subtitle
                            Text(
                              'Meeting on 2024 Investment Plans',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[700],
                              ),
                            ),
                            SizedBox(height: 16),

                            // Body Paragraph
                            Text(
                              'On December 19, President Shavkat Mirziyoyev held a meeting to review 2024 investment outcomes and set tasks for the upcoming year. Since 2017, 188 billion in investments have been made, including 87 billion in foreign investments, boosting GDP growth with investments now exceeding 30% of GDP.\n\n'
                              'In 2023, investments grew by 1.3 times to 36 billion, launching 560 projects worth 70 trillion soums and creating opportunities to increase exports by 1 billion next year. For 2024, 43 billion in investments and over 300 major projects are planned, including 662 import-substitution products.\n\n'
                              'President Mirziyoyev emphasized creating favorable conditions for foreign investors, expediting ongoing projects, and addressing export logistics challenges amid global difficulties. The goal is to double annual exports to 45 billion by 2030 by increasing high-value products and services and expanding export markets.',
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.grey[800],
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ));
              },
              childCount: 1,
            ),
          ),

          // Comments Section
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Top Comment Box
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Card(
                    color: Color(0xFFFCFEFF),

                    margin: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 8), // Add spacing around the card
                    elevation: 4, // Add shadow for better visibility
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(
                          12.0), // Add padding inside the card
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // Profile Picture
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                    'assets/profile_placeholder.png'),
                              ),
                              Text("Maria T"),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: TextField(
                                  controller: commentController,
                                  decoration: const InputDecoration(
                                    hintText: 'Type something...',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          // TextButton(
                          //   onPressed: postComment,
                          //   style: TextButton.styleFrom(
                          //     foregroundColor: Colors.blue,
                          //     backgroundColor: Colors.grey.shade200,
                          //   ),
                          //   child: const Text('Post'),
                          // ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: postComment,
                              child: Container(
                                height: 40,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: commentController.text.isEmpty
                                      ? Colors.grey
                                      : Color(0xFF3C97D3),
                                ),
                                child: Center(
                                  child: Text(
                                    'Post',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: 10),
                      // Text Input Field

                      // Post Button

                      // GestureDetector(
                      //   onTap: () {
                      //     postComment;
                      //   },
                      //   child: Container(
                      //     height: 40,
                      //     width: 80,
                      //     decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(10),
                      //       color: Color(0xFF3C97D3),
                      //     ),
                      //     child: Center(
                      //         child: Text('Reply',
                      //             style: TextStyle(color: Colors.white))),
                      //   ),
                      // ),
                    ),
                  ),
                ),
                SizedBox(height: 15),

                // Comments List
                // ListView.builder(
                //   shrinkWrap: true,
                //   physics: const NeverScrollableScrollPhysics(),
                //   itemCount: comments.length,
                //   itemBuilder: (context, index) {
                //     return Padding(
                //       padding: const EdgeInsets.all(
                //           12.0), // Add padding inside the card
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           // Main Comment
                //           Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               // Comment Author
                //               Row(
                //                 children: [
                //                   CircleAvatar(
                //                     radius: 15,
                //                     backgroundImage: AssetImage(
                //                         'assets/profile_placeholder.png'),
                //                   ),
                //                   SizedBox(width: 10),
                //                   Text(
                //                     comments[index]['name'],
                //                     style: const TextStyle(
                //                       fontWeight: FontWeight.bold,
                //                       fontSize: 16,
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //               SizedBox(height: 5),
                //               // Comment Text
                //               Text(
                //                 comments[index]['comment'],
                //                 style: const TextStyle(fontSize: 14),
                //               ),
                //               SizedBox(height: 10),
                //               // Like & Reply Buttons
                //               Row(
                //                 mainAxisAlignment:
                //                     MainAxisAlignment.spaceBetween,
                //                 children: [
                //                   Row(
                //                     children: [
                //                       IconButton(
                //                         icon: const Icon(Icons.favorite_border,
                //                             size: 18),
                //                         onPressed:
                //                             () {}, // Add like functionality
                //                       ),
                //                       IconButton(
                //                         icon: const Icon(Icons.share, size: 18),
                //                         onPressed:
                //                             () {}, // Add share functionality
                //                       ),
                //                     ],
                //                   ),
                //                   GestureDetector(
                //                     onTap: () {
                //                       showReplyBox(index);
                //                     },
                //                     child: Container(
                //                       height: 40,
                //                       width: 80,
                //                       decoration: BoxDecoration(
                //                         borderRadius: BorderRadius.circular(10),
                //                         color: Color(0xFF3C97D3),
                //                       ),
                //                       child: Center(
                //                           child: Text('Reply',
                //                               style: TextStyle(
                //                                   color: Colors.white))),
                //                     ),
                //                   ),
                //                 ],
                //               ),
                //             ],
                //           ),

                //           // Replies Section
                //           if (comments[index]['replies'].isNotEmpty)
                //             Padding(
                //               padding: const EdgeInsets.only(left: 40),
                //               child: Column(
                //                 children: [
                //                   for (var reply in comments[index]['replies'])
                //                     Container(
                //                       margin: const EdgeInsets.only(bottom: 5),
                //                       padding: const EdgeInsets.all(8),
                //                       decoration: BoxDecoration(
                //                         color: Colors.grey.shade100,
                //                         borderRadius: BorderRadius.circular(10),
                //                       ),
                //                       child: Row(
                //                         crossAxisAlignment:
                //                             CrossAxisAlignment.start,
                //                         children: [
                //                           const CircleAvatar(
                //                             radius: 12,
                //                             backgroundImage: AssetImage(
                //                                 'assets/profile_placeholder.png'),
                //                           ),
                //                           const SizedBox(width: 8),
                //                           Expanded(
                //                             child: Column(
                //                               crossAxisAlignment:
                //                                   CrossAxisAlignment.start,
                //                               children: [
                //                                 Text(
                //                                   reply['name'],
                //                                   style: const TextStyle(
                //                                     fontWeight: FontWeight.bold,
                //                                     fontSize: 14,
                //                                   ),
                //                                 ),
                //                                 const SizedBox(height: 4),
                //                                 Text(
                //                                   reply['comment'],
                //                                   style: const TextStyle(
                //                                       fontSize: 12),
                //                                 ),
                //                                 Row(
                //                                   mainAxisAlignment:
                //                                       MainAxisAlignment
                //                                           .center, // Center the line horizontally
                //                                   children: [
                //                                     SizedBox(
                //                                       width:
                //                                           200, // Set the desired length of the line
                //                                       child: Divider(
                //                                         color: Colors
                //                                             .black, // Set the color of the line
                //                                         thickness:
                //                                             2, // Set the thickness of the line
                //                                       ),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ],
                //                             ),
                //                           ),
                //                         ],
                //                       ),
                //                     ),
                //                 ],
                //               ),
                //             ),

                //           // Reply Box (Visible when reply button is clicked)
                //           if (replyingToIndex == index)
                //             Padding(
                //               padding: const EdgeInsets.only(top: 10, left: 40),
                //               child: Container(
                //                 padding: const EdgeInsets.all(8),
                //                 decoration: BoxDecoration(
                //                   color: Colors.grey.shade100,
                //                   borderRadius: BorderRadius.circular(10),
                //                 ),
                //                 child: Row(
                //                   children: [
                //                     const CircleAvatar(
                //                       radius: 12,
                //                       backgroundImage: AssetImage(
                //                           'assets/profile_placeholder.png'),
                //                     ),
                //                     const SizedBox(width: 10),
                //                     Expanded(
                //                       child: TextField(
                //                         controller: replyController,
                //                         decoration: InputDecoration(
                //                           hintText:
                //                               'Replying to ${comments[index]['name']}...',
                //                           border: InputBorder.none,
                //                         ),
                //                       ),
                //                     ),
                //                     TextButton(
                //                       onPressed: postReply,
                //                       style: TextButton.styleFrom(
                //                         foregroundColor: Colors.blue,
                //                       ),
                //                       child: Text('Post'),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //             ),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment
                //                 .center, // Center the line horizontally
                //             children: [
                //               SizedBox(
                //                 width:
                //                     350, // Set the desired length of the line
                //                 child: Divider(
                //                   color:
                //                       Colors.grey, // Set the color of the line
                //                   thickness:
                //                       0.5, // Set the thickness of the line
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ],
                //       ),
                //     );

                //   },
                // ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(
                          12.0), // Add padding around the comment
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Main Comment
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Comment Author
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 15,
                                    backgroundImage: AssetImage(
                                        'assets/profile_placeholder.png'),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    comments[index]['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 5),
                              // Comment Text
                              Text(
                                comments[index]['comment'],
                                style: const TextStyle(fontSize: 14),
                              ),
                              const SizedBox(height: 10),
                              // Like & Reply Buttons
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      IconButton(
                                        icon: Icon(Icons.favorite_border,
                                            size: 18),
                                        onPressed:
                                            () {}, // Add like functionality
                                      ),
                                      IconButton(
                                        icon: Icon(Icons.ios_share_sharp,
                                            size: 18),
                                        onPressed:
                                            () {}, // Add share functionality
                                      ),
                                    ],
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      showReplyBox(index);
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: const Color(0xFF3C97D3),
                                      ),
                                      child: Center(
                                        child: Text(
                                          'Reply',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // Replies Section
                          if (comments[index]['replies'].isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.only(left: 40),
                              child: Column(
                                children: [
                                  for (var reply in comments[index]['replies'])
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 5),
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                                'assets/profile_placeholder.png'),
                                          ),
                                          const SizedBox(width: 8),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  reply['name'],
                                                  style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                const SizedBox(height: 4),
                                                Text(
                                                  reply['comment'],
                                                  style: const TextStyle(
                                                      fontSize: 12),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                ],
                              ),
                            ),

                          // Reply Box (Visible when reply button is clicked)
                          if (replyingToIndex == index)
                            Padding(
                              padding: const EdgeInsets.only(top: 10, left: 40),
                              child: Card(
                                child: Container(
                                  height: 200,
                                  width: 380,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    //   border: Border.all(color: Colors.grey),
                                    color: Colors.grey.shade100,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 2,
                                        backgroundImage: AssetImage(
                                            'assets/profile_placeholder.png'),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Container(
                                          height: 180,
                                          decoration: BoxDecoration(
                                            // border: Border.all(),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black
                                                    .withOpacity(0.05),
                                                spreadRadius: 0,
                                                blurRadius: 4,
                                                offset: Offset(0, 4),
                                              ),
                                            ],
                                          ),
                                          child: Card(
                                            color: Color(0xFFFCFEFF),

                                            margin: EdgeInsets.symmetric(
                                                horizontal: 16,
                                                vertical:
                                                    8), // Add spacing around the card
                                            elevation:
                                                4, // Add shadow for better visibility
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      10), // Rounded corners
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(
                                                  12.0), // Add padding inside the card
                                              child: Column(
                                                children: [
                                                  Row(
                                                    children: [
                                                      // Profile Picture
                                                      CircleAvatar(
                                                        radius: 20,
                                                        backgroundImage: AssetImage(
                                                            'assets/profile_placeholder.png'),
                                                      ),
                                                      Text("Maria T"),
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: TextField(
                                                          controller:
                                                              commentController,
                                                          decoration:
                                                              const InputDecoration(
                                                            hintText:
                                                                'Type something...',
                                                            border: InputBorder
                                                                .none,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  // TextButton(
                                                  //   onPressed: postComment,
                                                  //   style: TextButton.styleFrom(
                                                  //     foregroundColor: Colors.blue,
                                                  //     backgroundColor: Colors.grey.shade200,
                                                  //   ),
                                                  //   child: const Text('Post'),
                                                  // ),
                                                  Align(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    child: GestureDetector(
                                                      onTap: postComment,
                                                      child: Container(
                                                        height: 40,
                                                        width: 80,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          color: commentController
                                                                  .text.isEmpty
                                                              ? Colors.grey
                                                              : Color(
                                                                  0xFF3C97D3),
                                                        ),
                                                        child: Center(
                                                          child: Text(
                                                            'Post',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              // SizedBox(width: 10),
                                              // Text Input Field

                                              // Post Button

                                              // GestureDetector(
                                              //   onTap: () {
                                              //     postComment;
                                              //   },
                                              //   child: Container(
                                              //     height: 40,
                                              //     width: 80,
                                              //     decoration: BoxDecoration(
                                              //       borderRadius: BorderRadius.circular(10),
                                              //       color: Color(0xFF3C97D3),
                                              //     ),
                                              //     child: Center(
                                              //         child: Text('Reply',
                                              //             style: TextStyle(color: Colors.white))),
                                              //   ),
                                              // ),
                                            ),
                                          ),
                                        ),
                                        //  Container(
                                        //   height: 200,

                                        //   decoration: BoxDecoration(
                                        //       border: Border.all()),
                                        //   child: TextField(
                                        //     controller: replyController,
                                        //     decoration: InputDecoration(
                                        //       hintText:
                                        //           'Replying to ${comments[index]['name']}...',
                                        //       border: InputBorder.none,
                                        //     ),
                                        //   ),
                                        // ),
                                      ),
                                      GestureDetector(
                                        onTap: postReply,
                                        child: Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: replyController.text.isEmpty
                                                ? Colors.grey
                                                : Color(0xFF3C97D3),
                                          ),
                                          child: Center(
                                            child: Text(
                                              'Post',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // TextButton(
                                      //   onPressed: postReply,
                                      //   style: TextButton.styleFrom(
                                      //     foregroundColor: Colors.blue,
                                      //   ),
                                      //   child:  Text('Post'),
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    );

                    // Divider with controlled width
                    return Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Main Comment and Replies
                              ...[
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Comment Author
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 15,
                                          backgroundImage: AssetImage(
                                              'assets/profile_placeholder.png'),
                                        ),
                                        const SizedBox(width: 10),
                                        Text(
                                          comments[index]['name'],
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5),
                                    // Comment Text
                                    Text(
                                      comments[index]['comment'],
                                      style: const TextStyle(fontSize: 14),
                                    ),
                                    const SizedBox(height: 10),
                                    // Like & Reply Buttons
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            IconButton(
                                              icon: const Icon(
                                                  Icons.favorite_border,
                                                  size: 18),
                                              onPressed:
                                                  () {}, // Add like functionality
                                            ),
                                            IconButton(
                                              icon: const Icon(Icons.share,
                                                  size: 18),
                                              onPressed:
                                                  () {}, // Add share functionality
                                            ),
                                          ],
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            showReplyBox(index);
                                          },
                                          child: Container(
                                            height: 40,
                                            width: 80,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: const Color(0xFF3C97D3),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Reply',
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                // Replies Section
                                if (comments[index]['replies'].isNotEmpty)
                                  Padding(
                                    padding: const EdgeInsets.only(left: 40),
                                    child: Column(
                                      children: [
                                        for (var reply in comments[index]
                                            ['replies'])
                                          Container(
                                            margin: const EdgeInsets.only(
                                                bottom: 5),
                                            padding: const EdgeInsets.all(8),
                                            decoration: BoxDecoration(
                                              color: Colors.grey.shade100,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                            ),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const CircleAvatar(
                                                  radius: 12,
                                                  backgroundImage: AssetImage(
                                                      'assets/profile_placeholder.png'),
                                                ),
                                                const SizedBox(width: 8),
                                                Expanded(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        reply['name'],
                                                        style: const TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                      const SizedBox(height: 4),
                                                      Text(
                                                        reply['comment'],
                                                        style: const TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),

                                // Reply Box (Visible when reply button is clicked)
                                if (replyingToIndex == index)
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, left: 40),
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Colors.grey.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Row(
                                        children: [
                                          const CircleAvatar(
                                            radius: 12,
                                            backgroundImage: AssetImage(
                                                'assets/profile_placeholder.png'),
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: TextField(
                                              controller: replyController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    'Replying to ${comments[index]['name']}...',
                                                border: InputBorder.none,
                                              ),
                                            ),
                                          ),
                                          TextButton(
                                            onPressed: postReply,
                                            style: TextButton.styleFrom(
                                              foregroundColor: Colors.blue,
                                            ),
                                            child: const Text('Post'),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                              ],
                            ],
                          ),
                        ),

                        // Divider with controlled width
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 8.0), // Add vertical spacing
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment
                                .center, // Center the divider horizontally
                            children: [
                              SizedBox(
                                width:
                                    350, // Set the desired length of the line
                                child: Divider(
                                  color:
                                      Colors.grey, // Set the color of the line
                                  thickness:
                                      0.5, // Set the thickness of the line
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget for Tags
  Widget _buildTag(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 12,
          color: Colors.blue,
        ),
      ),
    );
  }
}
