import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class postwithcomment extends StatefulWidget {
  const postwithcomment({super.key});

  @override
  State createState() => _postwithcommentState();
}

class _postwithcommentState extends State<postwithcomment> {
  String? replyingTo; // Stores the name of the person being replied to
  List<Map<String, String>> comments = [
    {
      'name': 'Sanjay',
      'comment':
          'This article highlights such promising advancements. AI in diagnostics sounds fascinating early detection can truly save lives!'
    },
    {
      'name': 'Krishna',
      'comment':
          'AI in diagnostics is indeed a game-changer! Early detection has the potential to revolutionize healthcare and save countless lives. Exciting times ahead for medical advancements!'
    },
  ];
  final TextEditingController replyController = TextEditingController();

  void showReplyBox(String name) {
    setState(() {
      replyingTo = name;
    });
  }

  void postReply() {
    if (replyController.text.isNotEmpty) {
      setState(() {
        comments.add({
          'name': 'You',
          'comment': replyController.text,
        });
        replyController.clear();
        replyingTo = null; // Hide reply box after posting
      });
    }
  }

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
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tags Section
                      Row(
                        children: [
                          _buildTag('Tags'),
                          const SizedBox(width: 8),
                          _buildTag('Tags'),
                          const Spacer(),
                          LikeButton(),
                          const SizedBox(width: 8),
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
                            child: Image.asset("assets/7.png"),
                          ),
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
                );
              },
              childCount: 1, // Number of items in the list
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                // Top Comment Box
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        blurRadius: 5,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            AssetImage('assets/profile_placeholder.png'),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            hintText: 'Type something...',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {}, // Add post comment logic
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blue,
                          backgroundColor: Colors.grey.shade200,
                        ),
                        child: const Text('Post'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                // Comments List
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Comment Author
                          Row(
                            children: [
                              const CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage('assets/profile_placeholder.png'),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                comments[index]['name']!,
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
                            comments[index]['comment']!,
                            style: const TextStyle(fontSize: 14),
                          ),
                          const SizedBox(height: 10),
                          // Like & Reply Buttons
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.favorite_border, size: 18),
                                    onPressed: () {}, // Add like functionality
                                  ),
                                  IconButton(
                                    icon: const Icon(Icons.share, size: 18),
                                    onPressed: () {}, // Add share functionality
                                  ),
                                ],
                              ),
                              TextButton(
                                onPressed: () {
                                  showReplyBox(comments[index]['name']!);
                                },
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.blue,
                                ),
                                child: const Text('Reply'),
                              ),
                            ],
                          ),
                          // Reply Box (Visible when reply button is clicked)
                          if (replyingTo == comments[index]['name'])
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Container(
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const CircleAvatar(
                                          radius: 15,
                                          backgroundImage:
                                              AssetImage('assets/profile_placeholder.png'),
                                        ),
                                        const SizedBox(width: 10),
                                        Expanded(
                                          child: TextField(
                                            controller: replyController,
                                            decoration: InputDecoration(
                                              hintText: 'Replying to $replyingTo...',
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
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
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