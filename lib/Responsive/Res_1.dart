import 'package:flutter/material.dart';
class Res1 extends StatefulWidget {
  const Res1({super.key});

  @override
  State<Res1> createState() => _Res1State();
}

class _Res1State extends State<Res1> {
  @override
  Widget build(BuildContext context) {
    double screenheight=MediaQuery.of(context).size.height;
    double screenwidth=MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: screenheight*0.5,
                width: screenwidth*0.5,
                color: Colors.red,
              ),
              Container(
                height: screenheight*0.5,
                width: screenwidth*0.5,
                color: Colors.blue,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
