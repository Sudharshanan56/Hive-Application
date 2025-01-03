import 'package:flutter/material.dart';


class Notification_1 extends StatelessWidget {
  const Notification_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
          backgroundColor: Colors.blue,
        ),
        body: const NotificationList(),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  const NotificationList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8.0),
      children: [
        ListTile(
          leading: Image(image: AssetImage("assets/7.png")),
          title: Text('AIU has published a new article!'),
          subtitle: Text('Explore our latest insights on'),
          trailing: Text('2m'),
        ),
        Divider(thickness: 1,),
        ListTile(
          leading: Image(image: AssetImage("assets/8.png")),
          title: Text('Sanjay replied to your comment on the article:'),
          subtitle:
          Text('The article looks perfect! Everything is well-organized and accurate'),
          trailing: Text('8h'),
        ),
        Divider(thickness: 1,),
        ListTile(
          leading: Image(image: AssetImage("assets/9.png")),
          title: Text('Ace Your Exams!'),
          subtitle:
          Text('Check out expert tips to succeed in your upcoming medical entrance tests.'),
          trailing: Text('14h'),
          // hasButton: true,
        ),
        Divider(thickness: 1,),
        ListTile(
         leading: Image(image: AssetImage("assets/10.png")),
          title: Text('Your Scores Are In!'),
          subtitle:
          Text('Check your eligibility for top medical universities now!'),
          trailing: Text('17h'),
        ),
        Divider(thickness: 1,),
        ListTile(
         leading: Image(image: AssetImage("assets/11.png")),
          title: Text('Fresh Off the Press!'),
          subtitle:
         Text( 'Read our new article, \'Scientists’ Week at TSMU\' and excel in your exams!'),
          trailing: Text('2d'),
        ),
      ],
    );
  }
}

class NotificationTile extends StatelessWidget {
  final IconData? icon;
  final Color? iconColor;
  final String? imageUrl;
  final String title;
  final String subtitle;
  final String time;
  final bool hasButton;

  const NotificationTile({
    Key? key,
    this.icon,
    this.iconColor,
    this.imageUrl,
    required this.title,
    required this.subtitle,
    required this.time,
    this.hasButton = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: imageUrl != null
            ? CircleAvatar(
          backgroundImage: NetworkImage(imageUrl!),
        )
            : CircleAvatar(
          backgroundColor: iconColor,
          child: Icon(
            icon,
            color: Colors.white,
          ),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle),
            if (hasButton)
              TextButton(
                onPressed: () {},
                child: const Text('Learn More'),
              ),
          ],
        ),
        trailing: Text(
          time,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
