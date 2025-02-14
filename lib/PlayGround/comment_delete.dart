import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class CommentsSection extends StatefulWidget {
  const CommentsSection({Key? key}) : super(key: key);

  @override
  State<CommentsSection> createState() => _CommentsSectionState();
}

class _CommentsSectionState extends State<CommentsSection> {
  final TextEditingController commentController = TextEditingController();
  final TextEditingController replyController = TextEditingController();
  int? replyingToIndex;

  List<Map<String, dynamic>> comments = [];

  void postComment() {
    if (commentController.text.isNotEmpty) {
      setState(() {
        // Insert new comment at the beginning of the list
        comments.insert(0, {
          'name': 'Maria T',
          'comment': commentController.text,
          'replies': [],
        });
        commentController.clear();
      });
    }
  }

  void deleteComment(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Delete Comment'),
          content: Text('Are you sure you want to delete this comment?'),
          actions: <Widget>[
            TextButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Delete', style: TextStyle(color: Colors.red)),
              onPressed: () {
                setState(() {
                  comments.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showReplyBox(int index) {
    setState(() {
      replyingToIndex = index;
    });
  }

  void postReply() {
    if (replyController.text.isNotEmpty && replyingToIndex != null) {
      setState(() {
        comments[replyingToIndex!]['replies'].insert(0, {
          'name': 'Maria T',
          'comment': replyController.text,
        });
        replyController.clear();
        replyingToIndex = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(width: screenWidth * 0.050),
              Text(
                "Comments",
                style: TextStyle(
                  fontSize: screenWidth * 0.05,
                  color: Color(0xFF1C3E5A),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: screenHeight * 0.020),
          // Top Comment Box
          Container(
            height: 180,
            decoration: BoxDecoration(
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
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundImage:
                              AssetImage('assets/profile_placeholder.png'),
                        ),
                        SizedBox(width: screenWidth * 0.020),
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
                    Row(
                      children: [
                        LikeButton(
                          size: screenWidth * 0.07,
                          isLiked: false,
                          onTap: (isLiked) async {
                            print('Liked state: $isLiked');
                            return !isLiked;
                          },
                        ),
                        Spacer(),
                        GestureDetector(
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
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: comments.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 15,
                              backgroundImage:
                                  AssetImage('assets/profile_placeholder.png'),
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
                        Text(
                          comments[index]['comment'],
                          style: const TextStyle(fontSize: 14),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                LikeButton(
                                  size: screenWidth * 0.05,
                                  isLiked: false,
                                  onTap: (isLiked) async {
                                    print('Liked state: $isLiked');
                                    return !isLiked;
                                  },
                                ),
                                IconButton(
                                  icon: Icon(Icons.delete_outline,
                                      size: 18, color: Colors.red),
                                  onPressed: () => deleteComment(context, index),
                                ),
                                IconButton(
                                  icon: Icon(Icons.ios_share_sharp, size: 18),
                                  onPressed: () {},
                                ),
                              ],
                            ),
                            GestureDetector(
                              onTap: () => showReplyBox(index),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                            style:
                                                const TextStyle(fontSize: 12),
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
                    if (replyingToIndex == index)
                      Padding(
                        padding: const EdgeInsets.only(top: 10, left: 40),
                        child: Container(
                          height: 180,
                          decoration: BoxDecoration(
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
                                horizontal: 16, vertical: 8),
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
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
                                          controller: replyController,
                                          decoration: InputDecoration(
                                            hintText:
                                                'Replying to ${comments[index]['name']}...',
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Align(
                                    alignment: Alignment.bottomRight,
                                    child: GestureDetector(
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
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
    );
  }
}