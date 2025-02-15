// import 'package:flutter/material.dart';
//
//
// class Notification_1 extends StatelessWidget {
//   const Notification_1({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Notifications'),
//           backgroundColor: Colors.blue,
//         ),
//         body: const NotificationList(),
//       ),
//     );
//   }
// }
//
// class NotificationList extends StatelessWidget {
//   const NotificationList({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(8.0),
//       children: [
//         ListTile(
//           leading: Image(image: AssetImage("assets/7.png")),
//           title: Text('AIU has published a new article!'),
//           subtitle: Text('Explore our latest insights on'),
//           trailing: Text('2m'),
//         ),
//         Divider(thickness: 1,),
//         ListTile(
//           leading: Image(image: AssetImage("assets/8.png")),
//           title: Text('Sanjay replied to your comment on the article:'),
//           subtitle:
//           Text('The article looks perfect! Everything is well-organized and accurate'),
//           trailing: Text('8h'),
//         ),
//         Divider(thickness: 1,),
//         ListTile(
//           leading: Image(image: AssetImage("assets/9.png")),
//           title: Text('Ace Your Exams!'),
//           subtitle:
//           Text('Check out expert tips to succeed in your upcoming medical entrance tests.'),
//           trailing: Text('14h'),
//           // hasButton: true,
//         ),
//         Divider(thickness: 1,),
//         ListTile(
//          leading: Image(image: AssetImage("assets/10.png")),
//           title: Text('Your Scores Are In!'),
//           subtitle:
//           Text('Check your eligibility for top medical universities now!'),
//           trailing: Text('17h'),
//         ),
//         Divider(thickness: 1,),
//         ListTile(
//          leading: Image(image: AssetImage("assets/11.png")),
//           title: Text('Fresh Off the Press!'),
//           subtitle:
//          Text( 'Read our new article, \'Scientists’ Week at TSMU\' and excel in your exams!'),
//           trailing: Text('2d'),
//         ),
//       ],
//     );
//   }
// }
//
// class NotificationTile extends StatelessWidget {
//   final IconData? icon;
//   final Color? iconColor;
//   final String? imageUrl;
//   final String title;
//   final String subtitle;
//   final String time;
//   final bool hasButton;
//
//   const NotificationTile({
//     Key? key,
//     this.icon,
//     this.iconColor,
//     this.imageUrl,
//     required this.title,
//     required this.subtitle,
//     required this.time,
//     this.hasButton = false,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: imageUrl != null
//             ? CircleAvatar(
//           backgroundImage: NetworkImage(imageUrl!),
//         )
//             : CircleAvatar(
//           backgroundColor: iconColor,
//           child: Icon(
//             icon,
//             color: Colors.white,
//           ),
//         ),
//         title: Text(
//           title,
//           style: const TextStyle(
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         subtitle: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(subtitle),
//             if (hasButton)
//               TextButton(
//                 onPressed: () {},
//                 child: const Text('Learn More'),
//               ),
//           ],
//         ),
//         trailing: Text(
//           time,
//           style: const TextStyle(
//             color: Colors.grey,
//             fontSize: 12,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class Notification_1 extends StatelessWidget {
  const Notification_1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFFCFEFF),
        appBar: AppBar(
          title: const Text('Notifications'),
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: const NotificationList(),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  const NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final double imageSize = mediaQuery.size.width * 0.12;
    final double fontSizeTitle = mediaQuery.size.width * 0.045;
    final double fontSizeSubtitle = mediaQuery.size.width * 0.04;
    final double fontSizeTrailing = mediaQuery.size.width * 0.035;

    return SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: mediaQuery.size.width * 0.05,
          vertical: mediaQuery.size.height * 0.02,
        ),
        children: [
          _buildNotificationTile(
            image: "assets/8.png",
            title: 'AIU has published a new article!',
            subtitle: 'Explore our latest insights on',
            trailing: '2m',
            imageSize: imageSize,
            fontSizeTitle: fontSizeTitle,
            fontSizeSubtitle: fontSizeSubtitle,
            fontSizeTrailing: fontSizeTrailing,
          ),
          const Divider(thickness: 1),
          _buildNotificationTile(
            image: "assets/sanjay.png",
            title: 'Sanjay replied to your comment on the article:',
            subtitle:
                'The article looks perfect! Everything is well-organized and accurate',
            trailing: '8h',
            imageSize: imageSize,
            fontSizeTitle: fontSizeTitle,
            fontSizeSubtitle: fontSizeSubtitle,
            fontSizeTrailing: fontSizeTrailing,
          ),
          const Divider(thickness: 1),
          _buildNotificationTile(
            image: "assets/n3.png",
            title: 'Ace Your Exams!',
            subtitle:
                'Check out expert tips to succeed in your upcoming medical entrance tests.',
            trailing: '14h',
            imageSize: imageSize,
            fontSizeTitle: fontSizeTitle,
            fontSizeSubtitle: fontSizeSubtitle,
            fontSizeTrailing: fontSizeTrailing,
          ),
          const Divider(thickness: 1),
          _buildNotificationTile(
            image: "assets/n4.png",
            title: 'Your Scores Are In!',
            subtitle:
                'Check your eligibility for top medical universities now!',
            trailing: '17h',
            imageSize: imageSize,
            fontSizeTitle: fontSizeTitle,
            fontSizeSubtitle: fontSizeSubtitle,
            fontSizeTrailing: fontSizeTrailing,
          ),
          const Divider(thickness: 1),
          _buildNotificationTile(
            image: "assets/n5.png",
            title: 'Fresh Off the Press!',
            subtitle:
                'Read our new article, "Scientists’ Week at TSMU" and excel in your exams!',
            trailing: '2d',
            imageSize: imageSize,
            fontSizeTitle: fontSizeTitle,
            fontSizeSubtitle: fontSizeSubtitle,
            fontSizeTrailing: fontSizeTrailing,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationTile({
    required String image,
    required String title,
    required String subtitle,
    required String trailing,
    required double imageSize,
    required double fontSizeTitle,
    required double fontSizeSubtitle,
    required double fontSizeTrailing,
  }) {
    return ListTile(
      leading: Image(
        image: AssetImage(image),
        width: imageSize,
        height: imageSize,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontSize: fontSizeTitle,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: fontSizeSubtitle, color: Color(0xFF1E293B)),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
          fontSize: fontSizeTrailing,
          color: Colors.grey,
        ),
      ),
    );
  }
}

void main() {
  runApp(const Notification_1());
}
