// import 'package:flutter/material.dart';
//
//
//
// class PopularTopicsScreen extends StatelessWidget {
//   const PopularTopicsScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blue[50],
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Title
//               Text(
//                 'Asia International University',
//                 style: TextStyle(
//                   fontSize: 18,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 4),
//               Text(
//                 'Popular Topics',
//                 style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey[700],
//                 ),
//               ),
//               const SizedBox(height: 16),
//
//               // Card Section
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.black.withOpacity(0.1),
//                       blurRadius: 8,
//                       offset: Offset(0, 4),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   children: [
//                     // Image Section
//                     Stack(
//                       children: [
//                         ClipRRect(
//                           borderRadius: BorderRadius.vertical(
//                             top: Radius.circular(16),
//                           ),
//                           child: Image.asset("assets/person.png")
//                         ),
//                         Positioned(
//                           bottom: 16,
//                           left: 16,
//                           child: Text(
//                             'plans in the field of investment',
//                             style: TextStyle(
//                               fontSize: 16,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.white,
//                               shadows: [
//                                 Shadow(
//                                   color: Colors.black.withOpacity(0.5),
//                                   blurRadius: 4,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 16),
//
//                     // Stats Section
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                       child: Column(
//                         children: [
//                           // Total Views
//                           Text(
//                             'Total Views',
//                             style: TextStyle(
//                               fontSize: 14,
//                               color: Colors.grey[700],
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             '246',
//                             style: TextStyle(
//                               fontSize: 24,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black,
//                             ),
//                           ),
//                           const SizedBox(height: 4),
//                           Text(
//                             'Total Views Across All Articles',
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.grey[500],
//                             ),
//                           ),
//                           const SizedBox(height: 16),
//
//                           // Articles and Last Update Row
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               // Articles
//                               StatCard(
//                                 label: 'Articles',
//                                 value: '12',
//                                 description: 'Articles Published',
//                                 color: Colors.pink[100]!,
//                               ),
//                               // Last Update
//                               StatCard(
//                                 label: 'Last update',
//                                 value: '28th Dec',
//                                 description: '10:46 pm',
//                                 color: Colors.blue[100]!,
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 16),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class StatCard extends StatelessWidget {
//   final String label;
//   final String value;
//   final String description;
//   final Color color;
//
//   const StatCard({
//     Key? key,
//     required this.label,
//     required this.value,
//     required this.description,
//     required this.color,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 140,
//       padding: const EdgeInsets.all(12.0),
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             label,
//             style: TextStyle(
//               fontSize: 12,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             value,
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.bold,
//               color: Colors.black,
//             ),
//           ),
//           const SizedBox(height: 4),
//           Text(
//             description,
//             style: TextStyle(
//               fontSize: 12,
//               color: Colors.grey[700],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0, // Height of the expanded app bar
            floating: false, // App bar does not float
            pinned: true, // App bar remains visible when scrolling
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: "post1", // Unique tag for the image
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    "assets/person.png", // Replace with your image asset path
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // leading: Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: CircleAvatar(
            //       backgroundColor: Color(0xFF1D1D1D66),
            //       child: IconButton(
            //         onPressed: () {},
            //         icon: Icon(Icons.arrow_back_ios),
            //         color: Colors.white,
            //       )),
            // ),
            // actions: [
            //   IconButton(
            //     icon: const Icon(Icons.search),
            //     onPressed: () {
            //       // Action for the search button
            //     },
            //   ),
            //   IconButton(
            //     icon: const Icon(Icons.more_vert),
            //     onPressed: () {
            //       // Action for the more button
            //     },
            //   ),
            // ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.red),
                    // ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Tags Section
                        Row(
                          children: [
                            _buildTag('Tags'),
                            const SizedBox(width: 8),
                            _buildTag('Tags'),
                            Spacer(),
                            LikeButton(),
                            SizedBox(width: 8),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Header Section with Icon and Title
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Circular Logo/Icon
                            CircleAvatar(
                                backgroundColor: Colors.blue[50],
                                radius: 24,
                                child: Image.asset("assets/7.png")),
                            const SizedBox(width: 12),
                            // Title Section
                            const Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                            // Delete Icon
                            // IconButton(
                            //   icon: const Icon(Icons.delete, color: Colors.grey),
                            //   onPressed: () {
                            //     _delete(context);
                            //     // Add delete functionality here
                            //   },
                            // ),
                          ],
                        ),
                        const SizedBox(height: 16),

                        // Subtitle
                        Text(
                          'Meeting on 2024 Investment Plans',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[700],
                          ),
                        ),
                        const SizedBox(height: 16),

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
                );
              },
              childCount: 1, // Number of items in the list
            ),
          ),
        ],
      ),
    );
  }

  void _delete(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Delete Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Delete your account and data permanently.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  // Handle Delete Action
                  Navigator.pop(context);
                },
                child: const Text(
                  'Delete',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 50),
                  side: const BorderSide(color: Colors.grey),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        );
      },
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
