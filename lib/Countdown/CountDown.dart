import 'dart:async';
import 'package:flutter/material.dart';



class CountdownPage extends StatefulWidget {
  const CountdownPage({super.key});

  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  late Timer _timer;
  Duration _duration = const Duration();

  // Set your target date and time here
  final DateTime targetDate = DateTime(2025, 1, 31, 12, 0, 0);

  @override
  void initState() {
    super.initState();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final int days = _duration.inDays;
    final int hours = _duration.inHours % 24;
    final int minutes = _duration.inMinutes % 60;
    final int seconds = _duration.inSeconds % 60;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: const Icon(Icons.arrow_back_ios)),
      ),
      backgroundColor: const Color(0xFF3C97D3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Your next exam Awaits!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.blue[200],
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
    return const Text(
      ":",
      style: TextStyle(
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
