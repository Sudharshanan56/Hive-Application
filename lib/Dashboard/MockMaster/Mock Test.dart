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
}

class _MockTestPageState extends State<MockTestPage> {
  late Timer _timer;
  int _remainingTime = 45 * 60; // 45 minutes in seconds
  Map<int, int> selectedOptions =
      {}; // Store selected options for each question

  @override
  void initState() {
    super.initState();
    startTimer();
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
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF3434E),
        title: const Text(
          'Mock Test',
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 30,
                width: 75,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    const Icon(
                      Icons.timer_outlined,
                      color: Color(0xFFF3434E),
                    ),
                    Text(
                      formatTime(_remainingTime),
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFF3434E),
                      ),
                    ),
                  ],
                ),
              ),
            ),
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
              const SizedBox(height: 20),
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
              const SizedBox(height: 20),
              buildQuestion(
                3,
                "What is the largest organ in the human body?",
                ["Heart", "Liver", "Skin", "Lungs"],
              ),
              const SizedBox(height: 20),
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
                height: 45,
                width: 350,
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
                  child: const Text(
                    'Submit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
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
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
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
                Text(option, style: const TextStyle(fontSize: 16)),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
