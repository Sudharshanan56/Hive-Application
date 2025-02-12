// import 'package:flutter/material.dart';
// import 'dart:async';

// import 'Score.dart';

// class MockTestPage extends StatefulWidget {
//   const MockTestPage({super.key});

//   @override
//   _MockTestPageState createState() => _MockTestPageState();
// }

// class _MockTestPageState extends State<MockTestPage> {
//   late Timer _timer;
//   int _remainingTime = 45 * 60; // 45 minutes in seconds

//   @override
//   void initState() {
//     super.initState();
//     startTimer();
//   }

//   void startTimer() {
//     _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
//       if (_remainingTime > 0) {
//         setState(() {
//           _remainingTime--;
//         });
//       } else {
//         _timer.cancel();
//       }
//     });
//   }

//   String formatTime(int seconds) {
//     int minutes = seconds ~/ 60;
//     int secs = seconds % 60;
//     return "${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}";
//   }

//   @override
//   void dispose() {
//     _timer.cancel();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFF3434E),
//         title: const Text('Mock Test',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Center(
//               child: Container(
//                 height: 30,
//                 width: 75,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(30)
//                 ),
//                 child: Row(
//                   children: [
//                     const Icon(Icons.timer_outlined,color: Color(0xFFF3434E),),
//                     Text(
//                       formatTime(_remainingTime),
//                       style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Color(0xFFF3434E),),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               buildQuestion(
//                 "1. What is the normal range of body temperature in humans?",
//                 [
//                   "35.5 - 37.5°C",
//                   "36.0 - 38.0°C",
//                   "36.5 - 37.5°C",
//                   "37.0 - 38.5°C"
//                 ],
//               ),
//               const SizedBox(height: 20),
//               buildQuestion(
//                 "2. Which of the following is the primary function of haemoglobin in the blood?",
//                 [
//                   "Blood clotting",
//                   "Oxygen transport",
//                   "Immune response",
//                   "Nutrient absorption"
//                 ],
//               ),
//               const SizedBox(height: 20),
//               buildQuestion(
//                 "3. What is the largest organ in the human body?",
//                 [
//                   "Heart",
//                   "Liver",
//                   "Skin",
//                   "Lungs"
//                 ],
//               ),
//               const SizedBox(height: 20),
//               buildQuestion(
//                 "2. Which of the following is the primary function of haemoglobin in the blood?",
//                 [
//                   "Blood clotting",
//                   "Oxygen transport",
//                   "Immune response",
//                   "Nutrient absorption"
//                 ],
//               ),
//               const SizedBox(height: 20),
//               buildQuestion(
//                 "2. Which of the following is the primary function of haemoglobin in the blood?",
//                 [
//                   "Blood clotting",
//                   "Oxygen transport",
//                   "Immune response",
//                   "Nutrient absorption"
//                 ],
//               ),
//               SizedBox(
//                 height: 45,
//                 width: 350,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.redAccent,
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(30),
//                     ),
//                   ),
//                   onPressed: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));

//                   },
//                   child:  const Text(
//                     'Submit',
//                     style: TextStyle(fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),

//       ),
//     );
//   }

//   Widget buildQuestion(String question, List<String> options) {
//     int selectedOption = -1; // Variable to store the selected option index

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           question,
//           style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 10),
//         // Column(
//         //   children: options.map((option) {
//         //     return Row(
//         //       children: [
//         //         Radio(value: option, groupValue: null, onChanged: (value) {}),
//         //         Text(option, style: TextStyle(fontSize: 16)),
//         //       ],
//         //     );
//         //   }).toList(),
//         // ),
//         Column(
//           children: options.asMap().entries.map((entry) {
//             int index = entry.key;
//             String option = entry.value;
//             return Row(
//               children: [
//                 Radio(
//                   value: index, // Use the index as the value for each option
//                   groupValue: selectedOption, // Pass the selectedOption variable
//                   onChanged: (value) {
//                     selectedOption = value as int; // Update the selectedOption
//                     // You can perform other actions based on selection here
//                   },
//                 ),
//                 Text(option, style: const TextStyle(fontSize: 16)),
//               ],
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:async';

import 'package:hive_application/Dashboard/MockMaster/Score.dart';

class MockTestPage extends StatefulWidget {
  const MockTestPage({super.key});

  @override
  _MockTestPageState createState() => _MockTestPageState();

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class _MockTestPageState extends State<MockTestPage> {
  late Timer _timer;
  int statusIndex = 0;
  bool showText = true;
  double containerWidth = 50.0;
  double textOpacity = 0.0;
  Alignment textAlignment = Alignment.centerLeft;
  late Timer _time;
  int _remainingTime = 45 * 60; // 45 minutes in seconds
  Map<int, int> selectedOptions =
      {}; // Store selected options for each question
  final List<Map<String, dynamic>> statuses = [
    {"text": "Camera is on", "icon": Icons.videocam},
    {"text": "Microphone is on", "icon": Icons.mic},
    {"text": "Screen is recording", "icon": Icons.screen_share},
    // {"text": "Location tracking is enabled", "icon": Icons.location_on},
    // {"text": "Speaker is being used", "icon": Icons.speaker},
  ];
  @override
  void initState() {
    super.initState();
    startTimer();
    _startAnimation();

    // Initially set the correct container width
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        containerWidth =
            _calculateTextWidth(statuses[statusIndex]["text"]!) + 40.0;
      });
    });
  } //initstate

  void _startAnimation() {
    _time = Timer.periodic(Duration(seconds: 3), (timer) {
      setState(() {
        textAlignment = Alignment.centerRight; // Slide text out
        textOpacity = 0.0; // Start fading out
      });

      Future.delayed(Duration(milliseconds: 600), () {
        setState(() {
          showText = !showText; // Switch between text and icon
          statusIndex = (statusIndex + 1) % statuses.length; // Change status
          containerWidth = showText
              ? _calculateTextWidth(statuses[statusIndex]["text"]!) + 40.0
              : 50.0; // Dynamically adjust width
        });

        Future.delayed(Duration(milliseconds: 300), () {
          setState(() {
            textAlignment = Alignment.centerLeft; // Slide text in
            textOpacity = 1.0; // Fade in
          });
        });
      });
    });

    // Ensure text appears smoothly at the beginning
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        textOpacity = 1.0;
      });
    });
  }

  double _calculateTextWidth(String text) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: TextStyle(fontSize: 16.0)),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    return textPainter.width + 20.0; // Extra padding for readability
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer.cancel();
      }
    });
  }

  String formatTime(int seconds) {
    int minutes = seconds ~/ 60;
    int secs = seconds % 60;
    return "${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}";
  }

  @override
  void dispose() {
    _timer.cancel();
    _time.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    final double iconSize = screenWidth * 0.08; // Dynamic icon size
    final double textSize = screenWidth * 0.045; // Dynamic text size
    final TextPainter textPainter = TextPainter(
      text: TextSpan(
        text: statuses[statusIndex]["text"]!,
        style: TextStyle(fontSize: textSize),
      ),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    final double textWidth = textPainter.width + screenWidth * 0.08;

    final double containerWidth = showText ? textWidth : iconSize * 2;
    final double containerHeight =
        showText ? screenHeight * 0.06 : iconSize * 1.5;

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: const Color(0xFFF3434E),
        //   leading: Icon(Icons.transparent),
        //   title: const Text(
        //     'Mock Test',
        //     style: TextStyle(
        //         color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        //   ),
        //   actions: [
        //     Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: Center(
        //         child: Container(
        //           height: 30,
        //           width: 75,
        //           decoration: BoxDecoration(
        //               color: Colors.white,
        //               borderRadius: BorderRadius.circular(30)),
        //           child: Row(
        //             children: [
        //               const Icon(
        //                 Icons.timer_outlined,
        //                 color: Color(0xFFF3434E),
        //               ),
        //               Text(
        //                 formatTime(_remainingTime),
        //                 style: const TextStyle(
        //                   fontSize: 18,
        //                   fontWeight: FontWeight.bold,
        //                   color: Color(0xFFF3434E),
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        appBar: AppBar(
          toolbarHeight: screenHeight * 0.15,
          backgroundColor: Colors.redAccent,
          title: Text(
            'Mock Test',
            style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.070,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            Column(
              children: [
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Center(
                //     child: Container(
                //       height: 30,
                //       width: 75,
                //       decoration: BoxDecoration(
                //           color: Colors.white,
                //           borderRadius: BorderRadius.circular(30)),
                //       child: Row(
                //         children: [
                //           const Icon(
                //             Icons.timer_outlined,
                //             color: Color(0xFFF3434E),
                //           ),
                //           Text(
                //             formatTime(_remainingTime),
                //             style: const TextStyle(
                //               fontSize: 18,
                //               fontWeight: FontWeight.bold,
                //               color: Color(0xFFF3434E),
                //             ),
                //           ),
                //         ],
                //       ),
                //     ),
                //   ),
                // ),
                Padding(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.05,
                      right: screenWidth * 0.05), // 2% of screen width
                  child: Center(
                    child: Container(
                      height: screenHeight * 0.04, // 4% of screen height
                      width: screenWidth * 0.2, // 20% of screen width
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            screenWidth * 0.05), // Dynamic radius
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.timer_outlined,
                            color: Color(0xFFF3434E),
                            size: screenWidth * 0.05, // 5% of screen width
                          ),
                          SizedBox(
                              width: screenWidth *
                                  0.01), // 1% of screen width for spacing
                          Text(
                            formatTime(_remainingTime),
                            style: TextStyle(
                              fontSize:
                                  screenWidth * 0.045, // 4.5% of screen width
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFF3434E),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // AnimatedContainer(
                //   duration: Duration(milliseconds: 600),
                //   curve: Curves.easeInOut,
                //   width: containerWidth,
                //   height: 40,
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(20),
                //   ),
                //   child: Stack(
                //     children: [
                //       // Icon that appears when text is hidden
                //       Align(
                //         alignment: Alignment.center,
                //         child: AnimatedOpacity(
                //           duration: Duration(milliseconds: 500),
                //           opacity: showText ? 0.0 : 1.0,
                //           child: Icon(
                //             statuses[statusIndex]["icon"],
                //             color: Colors.redAccent,
                //             size: 24,
                //           ),
                //         ),
                //       ),
                //       // Sliding and Fading Text
                //       AnimatedAlign(
                //         duration: Duration(milliseconds: 600),
                //         alignment: textAlignment,
                //         curve: Curves.easeInOut,
                //         child: AnimatedOpacity(
                //           duration: Duration(milliseconds: 500),
                //           opacity: showText ? textOpacity : 0.0,
                //           child: Padding(
                //             padding: EdgeInsets.symmetric(
                //                 horizontal: 15), // Extra padding
                //             child: Text(
                //               statuses[statusIndex]["text"]!,
                //               style: TextStyle(
                //                   color: Colors.redAccent, fontSize: 16.0),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                // AnimatedContainer(
                //   duration: Duration(milliseconds: 600),
                //   curve: Curves.easeInOut,
                //   width: screenWidth * 0.5, // 50% of screen width
                //   height: screenHeight * 0.05, // 5% of screen height
                //   decoration: BoxDecoration(
                //     color: Colors.white,
                //     borderRadius: BorderRadius.circular(screenWidth * 0.05),
                //   ),
                //   child: Stack(
                //     children: [
                //       // Icon that appears when text is hiddeni
                //       Align(
                //         alignment: Alignment.center,
                //         child: AnimatedOpacity(
                //           duration: Duration(milliseconds: 500),
                //           opacity: showText ? 0.0 : 1.0,
                //           child: Icon(
                //             statuses[statusIndex]["icon"],
                //             color: Colors.redAccent,
                //             size: screenWidth * 0.06, // 6% of screen width
                //           ),
                //         ),
                //       ),
                //       // Sliding and Fading Text
                //       AnimatedAlign(
                //         duration: Duration(milliseconds: 600),
                //         alignment: textAlignment,
                //         curve: Curves.easeInOut,
                //         child: AnimatedOpacity(
                //           duration: Duration(milliseconds: 500),
                //           opacity: showText ? textOpacity : 0.0,
                //           child: Padding(
                //             padding: EdgeInsets.symmetric(
                //                 horizontal:
                //                     screenWidth * 0.04), // 4% of screen width
                //             child: Text(
                //               statuses[statusIndex]["text"]!,
                //               style: TextStyle(
                //                 color: Colors.redAccent,
                //                 fontSize:
                //                     screenWidth * 0.04, // 4% of screen width
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildQuestion(
                  1,
                  "What is the normal range of body temperature in humans?",
                  [
                    "35.5 - 37.5°C",
                    "36.0 - 38.0°C",
                    "36.5 - 37.5°C",
                    "37.0 - 38.5°C"
                  ],
                ),
                SizedBox(height: screenHeight * 0.020),
                buildQuestion(
                  2,
                  "Which of the following is the primary function of haemoglobin in the blood?",
                  [
                    "Blood clotting",
                    "Oxygen transport",
                    "Immune response",
                    "Nutrient absorption"
                  ],
                ),
                SizedBox(height: screenHeight * 0.020),
                buildQuestion(
                  3,
                  "What is the largest organ in the human body?",
                  ["Heart", "Liver", "Skin", "Lungs"],
                ),
                SizedBox(height: screenHeight * 0.020),

                // SizedBox(
                //   height: 45,
                //   width: double.infinity,
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //       backgroundColor: Colors.redAccent,
                //       foregroundColor: Colors.white,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(30),
                //       ),
                //     ),
                //     onPressed: () {
                //       // Display the selected options in a dialog or submit them to an API
                //       showDialog(
                //         context: context,
                //         builder: (context) => AlertDialog(
                //           title: const Text('Selected Options'),
                //           content: Text(selectedOptions.entries
                //               .map((entry) => 'Q${entry.key}: Option ${entry.value + 1}')
                //               .join('\n')),
                //           actions: [
                //             TextButton(
                //               onPressed: () => Navigator.pop(context),
                //               child: const Text('OK'),
                //             )
                //           ],
                //         ),
                //       );
                //     },
                //     child: const Text(
                //       'Submit',
                //       style: TextStyle(fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: screenHeight * 0.045,
                  width: screenWidth * 1.55,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.redAccent,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ResultScreen()));
                    },
                    child: Text(
                      'Submit',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.050),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildQuestion(
      int questionNumber, String question, List<String> options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question,
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Column(
          children: options.asMap().entries.map((entry) {
            int index = entry.key;
            String option = entry.value;
            return Row(
              children: [
                Radio(
                  value: index,
                  groupValue: selectedOptions[questionNumber],
                  onChanged: (value) {
                    setState(() {
                      selectedOptions[questionNumber] = value as int;
                    });
                  },
                ),
                Text(option, style: TextStyle(fontSize: 16)),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
