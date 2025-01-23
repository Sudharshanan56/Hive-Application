import 'package:flutter/material.dart';
class noti extends StatefulWidget {
  const noti({super.key});

  @override
  State<noti> createState() => _notiState();
}

class _notiState extends State<noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 1,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context,int index) {
            return const ListTile(
              leading: Image(image: AssetImage("assets/7.png")),
              title: Text("data"),
              trailing: Text("12345"),

            );

          }
      ),
    );
  }
}
