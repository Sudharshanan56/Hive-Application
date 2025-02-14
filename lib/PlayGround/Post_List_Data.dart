import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: PostListScreen(),
  ));
}

class PostListScreen extends StatelessWidget {
  // List of posts with images and text
  final List<Map<String, String>> posts = [
    {
      'profileImage': '7.png', // Replace with actual profile image
      'title': 'Mari State University',
      'location': 'Moscow, RU',
      'description': 'Mari State University Shines at',
      'highlight': 'Indo-Russian Education Summit',
      'postImage': 'person_2.png', // Replace with actual post image
    },
    {
      'profileImage': '8.png',
      'title': 'Oxford University',
      'location': 'Oxford, UK',
      'description': 'Oxford University Represents at',
      'highlight': 'Global Research Meet 2024',
      'postImage': 'person_3.png',
    },
    {
      'profileImage': '9.png',
      'title': 'Harvard University',
      'location': 'Cambridge, USA',
      'description': 'Harvard Highlights Innovations at',
      'highlight': 'Tech Summit 2024',
      'postImage': 'person_4.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("University Posts")),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Header
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(post['profileImage']!),
                        radius: 25,
                      ),
                      SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            post['title']!,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            post['location']!,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(Icons.share, color: Colors.grey), // Share icon
                    ],
                  ),
                  SizedBox(height: 8),
                  // Description
                  RichText(
                    text: TextSpan(
                      style: TextStyle(fontSize: 14, color: Colors.black),
                      children: [
                        TextSpan(text: post['description']! + " "),
                        TextSpan(
                          text: post['highlight']!,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  // Post Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      post['postImage']!,
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
