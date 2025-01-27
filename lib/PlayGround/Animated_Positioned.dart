import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedBoxes(),
    );
  }
}

class AnimatedBoxes extends StatefulWidget {
  @override
  _AnimatedBoxesState createState() => _AnimatedBoxesState();
}

class _AnimatedBoxesState extends State<AnimatedBoxes> {
  bool _startAnimation = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Directional Boxes Animation'),
      ),
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            left: _startAnimation ? 150 : -100,
            top: 100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            left: 150,
            top: _startAnimation ? 200 : -100,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            left: _startAnimation ? 50 : 350,
            top: 300,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.green,
            ),
          ),
          AnimatedPositioned(
            duration: Duration(seconds: 1),
            curve: Curves.easeInOut,
            left: 150,
            top: _startAnimation ? 400 : 600,
            child: Container(
              width: 100,
              height: 100,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _startAnimation = !_startAnimation;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
