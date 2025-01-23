import 'package:flutter/material.dart';


class sample4 extends StatelessWidget {
  // Dummy data to simulate posts
  final List<Map<String, String>> posts = List.generate(10, (index) {
    return {
      'university': 'Mari State University',
      'location': 'Moscow, RU',
      'event': 'Indo-Russian Education Summit',
      'image': 'https://via.placeholder.com/150' // Replace with your image URL
    };
  });

  sample4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post List'),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: (context, index) {
          final post = posts[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const CircleAvatar(
                      backgroundImage: AssetImage('assets/7.png'), // Replace with your image path
                      radius: 30,
                    ),
                    title: Text(post['university']!),
                    subtitle: Text(post['location']!),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    '${post['university']} Shines at',
                    style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    post['event']!,
                    style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const Image(image: AssetImage("assets/post1.png")),
                  const SizedBox(height: 16),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle button press
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5A9ECF),
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.circular(80),
                        ),
                      ),
                      child: Text('Explore Now',style: TextStyle(color: Colors.white),),
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
