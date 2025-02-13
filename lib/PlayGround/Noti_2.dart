import 'package:flutter/material.dart';

class NotificationScreen_2 extends StatelessWidget {
  const NotificationScreen_2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          NotificationTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF0D47A1),
              child: Text('AIU', style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
            title: 'AIU has published a new article!',
            subtitle: 'Explore our latest insights on',
            timeAgo: '2m',
          ),
          NotificationTile(
            leading: const CircleAvatar(
              backgroundImage: NetworkImage('https://placeholder.com/48x48'),
            ),
            title: 'Sanjey replied to your comment on the article:',
            subtitle: '"Understanding Medical Diagnosis Reports."',
            message: 'The article looks perfect! Everything is well-organized and accurate',
            timeAgo: '8h',
          ),
          NotificationTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red[400],
              child: const Icon(Icons.school, color: Colors.white, size: 20),
            ),
            title: 'Ace Your Exam!',
            subtitle: 'Check out expert tips to succeed in your upcoming medical entrance tests.',
            hasButton: true,
            timeAgo: '14h',
          ),
          NotificationTile(
            leading: const CircleAvatar(
              backgroundColor: Color(0xFF1565C0),
              child: Icon(Icons.school, color: Colors.white, size: 20),
            ),
            title: 'Your Scores Are In!',
            subtitle: 'Check your eligibility for top medical universities now!',
            timeAgo: '17h',
          ),
          NotificationTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[100],
              child: const Icon(Icons.article, color: Colors.blue, size: 20),
            ),
            title: 'Fresh Off the Press!',
            subtitle: "Read our new article, 'Scientists' Week at TSMU' and excel in your exams!",
            timeAgo: '2d',
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final String? message;
  final bool hasButton;
  final String timeAgo;

  const NotificationTile({
    Key? key,
    required this.leading,
    required this.title,
    required this.subtitle,
    this.message,
    this.hasButton = false,
    required this.timeAgo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          leading,
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                    Text(
                      timeAgo,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.black87,
                    fontSize: 13,
                  ),
                ),
                if (message != null) ...[
                  const SizedBox(height: 8),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      message!,
                      style: const TextStyle(fontSize: 13),
                    ),
                  ),
                ],
                if (hasButton) ...[
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: const Text('Learn More'),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}