import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Done(),
    );
  }
}

class Done extends StatelessWidget {
  const Done({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const NextPage()),
            );
          },
          child: const Text("Go to Next Page"),
        ),
      ),
    );
  }
}

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showBottomSheet();
    });
  }

  void _showBottomSheet() {
    showModalBottomSheet(
      context: context,
      isDismissible: false, // Prevent user from dismissing manually
      enableDrag: false, // Disable dragging to close
      builder: (context) {
        return SizedBox(
          height: 300,
          child: Center(
            child: Lottie.asset(
              'assets/done_1.json', // Add your Lottie animation in assets
              width: 200,
              height: 200,
              repeat: false,
            ),
          ),
        );
      },
    );

    // Auto-close bottom sheet after 3 seconds
    Future.delayed(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pop(context);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Next Page")),
      body:
          const Center(child: Text("Bottom sheet will appear automatically!")),
    );
  }
}
