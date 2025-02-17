// import 'dart:async';
import 'dart:async';

import 'package:flutter/material.dart';

class CountdownPage extends StatefulWidget {
  const CountdownPage({super.key});

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animation;
  late Timer _timer;
  Duration _duration = const Duration();

  // Set your target date and time here
  final DateTime targetDate = DateTime(2025, 3, 31, 12, 0, 0);

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () {
      if (mounted) {
        Navigator.pop(context); // Navigates back after 5 seconds
      }
    });
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    // Future.delayed(Duration(seconds: 3));
    // Navigator.pop(context);
    _animation = Tween<Offset>(
      begin: Offset(10.0, 10.0),
      end: Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    ));

    _controller.forward();

    _startCountdown();
  }

  void _startCountdown() {
    final DateTime now = DateTime.now();
    if (targetDate.isAfter(now)) {
      setState(() {
        _duration = targetDate.difference(now);
      });

      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        setState(() {
          if (_duration.inSeconds > 0) {
            _duration = _duration - const Duration(seconds: 1);
          } else {
            timer.cancel();
          }
        });
      });
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int days = _duration.inDays;
    final int hours = _duration.inHours % 24;
    final int minutes = _duration.inMinutes % 60;
    final int seconds = _duration.inSeconds % 60;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF3C97D3),
          leading: Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 1,
              backgroundColor: Color(0xFF1D1D1D66),
              child: IconButton(
                  onPressed: () {
                    //Future.delayed(Duration(seconds: 3));
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 20,
                  )),
            ),
          ),
        ),
        backgroundColor: const Color(0xFF3C97D3),
        body: SafeArea(
          child: Center(
            child: Stack(
              children: [
                // SlideTransition(
                //   position: _animation,
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 300),
                //     child: Positioned(
                //       left: 100,
                //       child: Image.asset("assets/Ellipse101.png"),
                //     ),
                //   ),
                // ),
                // SlideTransition(
                //   position: _animation,
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 320),
                //     child: Positioned(
                //       top: 320,
                //       child: Image.asset("assets/Ellipse100.png"),
                //     ),
                //   ),
                // ),
                SlideTransition(
                  position: _animation,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.82, bottom: screenHeight * 0.8),
                    child: Image.asset(
                      "assets/Ellipse101.png",
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4,
                    ),
                  ),
                ),
                SlideTransition(
                  position: _animation,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.88, top: screenHeight * 0.8),
                    child: Image.asset(
                      "assets/Ellipse102.png",
                      width: screenWidth * 0.4,
                      height: screenWidth * 0.4,
                    ),
                  ),
                ),
                SlideTransition(
                  position: _animation,
                  child: Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.4),
                    child: Image.asset(
                      "assets/Ellipse100.png",
                      // width: screenWidth * 0.2,
                      // height: screenWidth * 10.0,
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Your next exam Awaits!",
                      style: TextStyle(
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 17),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color(0xFF70777C66),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _buildTimeCard(days, "Days"),
                          _buildColon(),
                          _buildTimeCard(hours, "Hours"),
                          _buildColon(),
                          _buildTimeCard(minutes, "Min"),
                          _buildColon(),
                          _buildTimeCard(seconds, "Sec"),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTimeCard(int value, String label) {
    return Column(
      children: [
        Text(
          value.toString().padLeft(2, '0'),
          style: const TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Widget _buildColon() {
    return  Text(
      ":",
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
