import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xFFFCFEFF),
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.02,
        ),
        child: ListView(
          children: [
            NotificationCard(
              icon: CircleAvatar(
                backgroundColor: Color(0xFFEDF3FF),
                child: Image.asset('assets/7.png', width: screenWidth * 0.06),
              ),
              title: 'AIU has published a new article!',
              subtitle: 'Explore our latest insights on',
              timeAgo: '2m',
              isNew: true,
            ),
            NotificationCard(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/8.png'),
              ),
              title: 'Sanjay replied to your comment on the article:',
              subtitle:
                  '"The article looks perfect! Everything is well-organized and accurate"',
              articleTitle: 'Understanding Medical Diagnosis Reports.',
              timeAgo: '8h',
            ),
            NotificationCard(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/9.png'),
              ),
              title: 'Ace Your Exams!',
              subtitle:
                  'Check out expert tips to succeed in your upcoming medical entrance tests.',
              timeAgo: '14h',
              hasButton: true,
              buttonText: 'Learn More',
            ),
            NotificationCard(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/10.png'),
              ),
              title: 'Your Scores Are In!',
              subtitle:
                  'Check your eligibility for top medical universities now!',
              timeAgo: '17h',
            ),
            NotificationCard(
              icon: CircleAvatar(
                backgroundImage: AssetImage('assets/11.png'),
              ),
              title: 'Fresh Off the Press!',
              subtitle:
                  "Read our new article, 'Scientists' Week at TSMU' and excel in your exams!",
              timeAgo: '2d',
            ),
          ],
        ),
      ),
    );
  }
}

class NotificationCard extends StatelessWidget {
  final Widget icon;
  final String title;
  final String subtitle;
  final String timeAgo;
  final bool isNew;
  final bool hasButton;
  final String? buttonText;
  final String? articleTitle;

  const NotificationCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.timeAgo,
    this.isNew = false,
    this.hasButton = false,
    this.buttonText,
    this.articleTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    return Card(
      margin: EdgeInsets.only(bottom: screenWidth * 0.03),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (isNew)
              Stack(
                children: [
                  icon,
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      width: screenWidth * 0.02,
                      height: screenWidth * 0.02,
                      decoration: const BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                ],
              )
            else
              icon,
            SizedBox(width: screenWidth * 0.03),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                  if (articleTitle != null)
                    Text(
                      articleTitle!,
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                  SizedBox(height: screenWidth * 0.01),
                  Text(
                    subtitle,
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: screenWidth * 0.035,
                    ),
                  ),
                  if (hasButton)
                    Padding(
                      padding: EdgeInsets.only(top: screenWidth * 0.03),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue[100],
                          foregroundColor: Colors.blue[900],
                          elevation: 0,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.04,
                            vertical: screenWidth * 0.02,
                          ),
                        ),
                        child: Text(buttonText ?? 'Learn More'),
                      ),
                    ),
                ],
              ),
            ),
            Text(
              timeAgo,
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: screenWidth * 0.03,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
