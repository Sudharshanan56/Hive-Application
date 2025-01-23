import 'package:flutter/material.dart';



class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Notifications'),
        ),
        body: NotificationList(),
      ),
    );
  }
}

class NotificationList extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {'initial': 'R', 'name': 'R***', 'time': '2m'},
    {'initial': 'S', 'name': 'S***', 'time': '5h'},
    {'initial': 'G', 'name': 'G***', 'time': '6d'},
    {'initial': 'N', 'name': 'N***', 'time': '7w'},
    {'initial': 'K', 'name': 'K***', 'time': '9m'},
  ];

   NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            child: Text(notifications[index]['initial']!),
          ),
          title: Text('${notifications[index]['name']} visited your profile.'),
          subtitle: const Text('Pay to reveal profile visitors!'),
          trailing: Text(notifications[index]['time']!),
        );
      },
    );
  }
}
