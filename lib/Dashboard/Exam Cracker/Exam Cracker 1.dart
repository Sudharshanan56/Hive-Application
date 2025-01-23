// import 'package:flutter/material.dart';
// class ExamCracker1 extends StatefulWidget {
//   const ExamCracker1({super.key});
//
//   @override
//   State<ExamCracker1> createState() => _ExamCracker1State();
// }
//
// class _ExamCracker1State extends State<ExamCracker1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffFFDCDB),
//
//
//       appBar: AppBar(
//         backgroundColor: Color(0xffFFDCDB),
//         leading: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: GestureDetector(
//             onTap: ()=>Navigator.pop(context),
//             child: CircleAvatar(
//               radius: 1,
//               child: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
//               backgroundColor: Color(0xff1D1D1D66),
//             ),
//           ),
//         ),
//       ),
//       body: Column(
//         // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(height: 200,),
//           Padding(
//             padding: const EdgeInsets.only(right: 98),
//             child: Text("Master Your\nMedical Entrance!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xffF45C5C)),),
//           ),
//           SizedBox(height: 25,),
//           Padding(
//             padding: const EdgeInsets.only(left: 26),
//             child: Text("Prepare for success with our \nMedical Entrance Mock Test!\n Sharpen your skills, boost \n confidence, and ace your\n exam with practice tailored to\n your goals.",style: TextStyle(fontSize: 18,color: Color(0xff9F0000),fontFamily: 'poppins',letterSpacing: 3.0),),
//           ),
//
//           // Padding(
//           //   padding: const EdgeInsets.only(right: 250,top: 20),
//           //   child: CircleAvatar(
//           //     radius: 20,
//           //     backgroundColor: Colors.white,
//           //     child: Icon(Icons.arrow_right_alt,size: 30,),
//           //   ),
//           // )
//         ],
//       ),
//     );
//
//   }
// }

import 'package:flutter/material.dart';

class ExamCracker1 extends StatefulWidget {
  const ExamCracker1({super.key});

  @override
  State<ExamCracker1> createState() => _ExamCracker1State();
}

class _ExamCracker1State extends State<ExamCracker1> {
  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xffFFDCDB),
      appBar: AppBar(
        backgroundColor: const Color(0xffFFDCDB),
        leading: Padding(
          padding: EdgeInsets.all(screenWidth * 0.03),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: CircleAvatar(
              radius: screenWidth * 0.04,
              backgroundColor: const Color(0xff1d1d1d66),
              child: const Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: screenHeight * 0.25),
          Padding(
            padding: EdgeInsets.only(right: screenWidth * 0.25),
            child: Text(
              "    Master Your\n    Medical Entrance!",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.06,
                color: const Color(0xffF45C5C),
              ),
            ),
          ),
          SizedBox(height: screenHeight * 0.03),
          Padding(
            padding: EdgeInsets.only(left: screenWidth * 0.06),
            child: Text(
              "Prepare for success with our \nMedical Entrance Mock Test!\nSharpen your skills, boost \nconfidence, and ace your\nexam with practice tailored to\nyour goals.",
              style: TextStyle(
                fontSize: screenWidth * 0.045,
                color: const Color(0xff9F0000),
                fontFamily: 'poppins',
                letterSpacing: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
