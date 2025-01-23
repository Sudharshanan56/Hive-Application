import 'package:flutter/material.dart';

class DualPageTransitionScreen extends StatefulWidget {
  const DualPageTransitionScreen({super.key});

  @override
  _DualPageTransitionScreenState createState() =>
      _DualPageTransitionScreenState();
}

class _DualPageTransitionScreenState extends State<DualPageTransitionScreen> {
  double topPosition = -200; // Initial position for the top section
  double bottomPosition = -200; // Initial position for the bottom section

  @override
  void initState() {
    super.initState();
    // Trigger animations after the screen is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        topPosition = 0; // Bring the top section down
        bottomPosition = 0; // Bring the bottom section up
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top Section (Image Animation)
          AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOut,
            top: topPosition,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth,
              color: Colors.blue[100],
              child: Center(
                child: Image.asset(
                  'assets/4.png',
                  height: screenHeight * 0.4,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),

          // Bottom Section (Fields Animation)
          AnimatedPositioned(
            duration: const Duration(milliseconds: 800),
            curve: Curves.easeOut,
            bottom: bottomPosition,
            left: 0,
            right: 0,
            child: Container(
              height: screenHeight * 0.5,
              width: screenWidth,
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
             // color: Colors.blue[50],
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Step in and explore\nendless possibilities!",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          height: screenHeight * 0.07,
                          width: screenWidth * 0.12,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                          ),
                          child: Center(
                            child: Text(
                              '+91',
                              style: TextStyle(fontSize: screenWidth * 0.045),
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.05),
                        Expanded(
                          child: SizedBox(
                            height: screenHeight * 0.07,
                            child: const TextField(
                              keyboardType: TextInputType.phone,
                              decoration: InputDecoration(
                                hintText: "Enter number",
                                border: OutlineInputBorder(),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Add action here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.3,
                            vertical: screenHeight * 0.02,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          "Get OTP",
                          style: TextStyle(
                            fontSize: screenWidth * 0.045,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
