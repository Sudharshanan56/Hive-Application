import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CommentsPage(),
    );
  }
}

class CommentsPage extends StatefulWidget {
  const CommentsPage({super.key});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Comments', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                    backgroundImage: AssetImage('assets/profile_placeholder.png'),
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
            Expanded(
              child: ListView.builder(
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
                              backgroundImage: AssetImage('assets/profile_placeholder.png'),
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
            ),
          ],
        ),
      ),
    );
  }
}
