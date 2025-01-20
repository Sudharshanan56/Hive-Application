// import 'package:flutter/material.dart';
// class OnlineExam extends StatefulWidget {
//   const OnlineExam({super.key});
//
//   @override
//   State<OnlineExam> createState() => _OnlineExamState();
// }
//
// class _OnlineExamState extends State<OnlineExam> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xff3C97D3),
//
//       appBar: AppBar(
//         backgroundColor: Color(0xff3C97D3),
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
//             child: Text("Ace Your Medical\nEntrance with Ease!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
//           ),
//           SizedBox(height: 25,),
//           Padding(
//             padding: const EdgeInsets.only(left: 26),
//             child: Text("Track performance, check\n eligibility, access expert tips,\n and take mock tests—all in one\n app designed for medical\n entrance exam success!",style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'poppins',letterSpacing: 3.0),),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(right: 250,top: 20),
//             child: CircleAvatar(
//               radius: 20,
//               child: Icon(Icons.arrow_right_alt,size: 30,),
//             ),
//           )
//         ],
//       ),
//     );
//
//   }
// }


import 'package:flutter/material.dart';

class OnlineExam extends StatefulWidget {
  const OnlineExam({super.key});

  @override
  State<OnlineExam> createState() => _OnlineExamState();
}

class _OnlineExamState extends State<OnlineExam> {
  @override
  Widget build(BuildContext context) {
    // Get the screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff3C97D3),
      appBar: AppBar(
        backgroundColor: const Color(0xff3C97D3),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const CircleAvatar(
              radius: 1,
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.white,
              ),
              backgroundColor: Color(0xff1D1D1D66),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.2),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
              child: Text(
                "Ace Your Medical\nEntrance with Ease!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.06,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Text(
                "Track performance, check\n eligibility, access expert tips,\n and take mock tests—all in one\n app designed for medical\n entrance exam success!",
                style: TextStyle(
                  fontSize: screenWidth * 0.045,
                  color: Colors.white,
                  fontFamily: 'Poppins',
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.1),
              child: GestureDetector(
                onTap: () {
                  // Add your action here
                },
                child: const CircleAvatar(
                  radius: 30,
                  child: Icon(
                    Icons.arrow_right_alt,
                    size: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
