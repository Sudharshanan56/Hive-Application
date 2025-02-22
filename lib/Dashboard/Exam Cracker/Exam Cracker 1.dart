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

class _ExamCracker1State extends State<ExamCracker1>
    with SingleTickerProviderStateMixin {
  // late AnimationController _controller;
  // late Animation<Offset> _animation;
  late bool _startAnimation = false;
  @override
  void initState() {
    super.initState();
    // Delay the animation start
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _startAnimation = true;
      });
    });
  }
  // void initState() {
  //   super.initState();

  //   //_startAnimation = true;
  //   // _controller = AnimationController(
  //   //   vsync: this,
  //   //   duration: const Duration(seconds: 1),
  //   // );

  //   // _animation = Tween<Offset>(
  //   //   begin: Offset(0.0, -10.0),
  //   //   end: Offset(0.0, 0.0),
  //   // ).animate(_controller);

  //   // _controller.forward();
  // }

  @override
  Widget build(BuildContext context) {
    // Get screen dimensions
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffFFDCDB),
        // appBar: AppBar(
        //   backgroundColor: const Color(0xffFFDCDB),
        //   leading: Padding(
        //     padding: EdgeInsets.all(screenWidth * 0.03),
        //     child: GestureDetector(
        //       onTap: () => Navigator.pop(context),
        //       child: CircleAvatar(
        //         radius: screenWidth * 0.04,
        //         backgroundColor: const Color(0xff1d1d1d66),
        //         child: const Icon(
        //           Icons.keyboard_arrow_left,
        //           color: Colors.white,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
        body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Stack(
              children: [
                // SlideTransition(
                //   position: _animation,
                //   child: Padding(
                //     padding: const EdgeInsets.only(
                //       left: 50,
                //     ),
                //     child: Image.asset("assets/Rectangle1.png"),
                //   ),
                // ),
                // Padding(
                //   padding: EdgeInsets.all(screenWidth * 0.09),
                //   child: GestureDetector(
                //     onTap: () => Navigator.pop(context),
                //     child: CircleAvatar(
                //       radius: screenWidth * 0.04,
                //       backgroundColor: const Color(0xff1d1d1d66),
                //       child: const Icon(
                //         Icons.keyboard_arrow_left,
                //         color: Colors.white,
                //       ),
                //     ),
                //   ),
                // ),
                //rectangle-1
                AnimatedPositioned(
                  child: Container(
                    height: screenHeight * 0.22,
                    width: screenWidth * 0.35,
                    child: Image.asset(
                      "assets/Rectangle1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  left: screenWidth * 0.09,
                  top: _startAnimation ? screenHeight * 0.001 : -100,
                ),
                //rectangle-2
                // AnimatedPositioned(
                //   child:

                AnimatedPositioned(
                  child: Container(
                    height: screenHeight * 0.22,
                    width: screenWidth * 0.35,
                    child: Image.asset(
                      "assets/Rectangle2.png",
                    ),
                  ),
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  left: screenWidth * 0.70,
                  top: screenHeight * 0.34,
                  right: _startAnimation ? 0.0 : -300.0,
                ),
                //rectangle-3
                AnimatedPositioned(
                  child: Container(
                    height: screenHeight * 0.42,
                    width: screenWidth * 0.40,
                    child: Image.asset(
                      "assets/Rectangle3.png",
                      //fit: BoxFit.fill,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  left: screenWidth * 0.70,
                  top: screenHeight * 0.82,
                  right: screenWidth * 0.05,
                  bottom: _startAnimation ? 0.0 : -300.0,
                ),
                //rectangle-4

                AnimatedPositioned(
                    child: Container(
                      height: screenHeight * 0.42,
                      width: screenWidth * 0.35,
                      child: Image.asset(
                        "assets/Rectangle4.png",
                      ),
                    ),
                    duration: Duration(seconds: 1),
                    curve: Curves.easeInOut,
                    left: _startAnimation ? 0.0 : -100,
                    top: screenHeight * 0.62,
                    right: screenWidth * 0.75
                    //bottom: _startAnimation ? 0.0 : -300.0,
                    ),
                // Positioned(
                //   left: screenWidth * 0.70,
                //   top: screenHeight * 0.34,
                //   child: Image.asset(
                //     "assets/Rectangle2.png",
                //   ),
                // ),
                //   duration: Duration(seconds: 1),
                //   curve: Curves.easeInOut,
                //   left: screenWidth * 0.70,
                //   right: _startAnimation ? screenHeight * 0.00 : -100,
                // ),

                Stack(
                  children: [
                    Positioned(
                      top: 0,
                      child: Column(
                        children: [
                          // AnimatedPositioned(
                          //   child: Text(
                          //     "    Master Your\n    Medical Entrance!",
                          //     style: TextStyle(
                          //       fontWeight: FontWeight.bold,
                          //       fontSize: screenWidth * 0.06,
                          //       color: const Color(0xffF45C5C),
                          //     ),
                          //   ),
                          //   curve: Curves.easeInOut,
                          //   left: _startAnimation
                          //       ? screenWidth * 0.05
                          //       : -screenWidth, // Start from outside screen

                          //   top: screenHeight * 0.82,
                          //   duration: Duration(seconds: 1),
                          // ),
                          // SizedBox(height: screenHeight * 0.03),
                          // Padding(
                          //   padding: EdgeInsets.only(left: screenWidth * 0.06),
                          //   child: Text(
                          //     "Prepare for success with our \nMedical Entrance Mock Test!\nSharpen your skills, boost \nconfidence, and ace your\nexam with practice tailored to\nyour goals.",
                          //     style: TextStyle(
                          //       fontSize: screenWidth * 0.045,
                          //       color: const Color(0xff9F0000),
                          //       fontFamily: 'poppins',
                          //       letterSpacing: 1.5,
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
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

                AnimatedPositioned(
                  child: Text(
                    "    Master Your\n    Medical Entrance!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.06,
                      color: const Color(0xffF45C5C),
                    ),
                  ),
                  curve: Curves.easeInOut,
                  left: _startAnimation
                      ? screenWidth * 0.05
                      : -screenWidth, // Start from outside screen

                  top: screenHeight * 0.24,
                  duration: Duration(seconds: 1),
                ),

                AnimatedPositioned(
                  child: Text(
                    "Prepare for success with our \nMedical Entrance Mock Test!\nSharpen your skills, boost \nconfidence, and ace your\nexam with practice tailored to\nyour goals.",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      color: const Color(0xff9F0000),
                      fontFamily: 'poppins',
                      letterSpacing: 1.5,
                    ),
                  ),
                  curve: Curves.easeInOut,
                  left: _startAnimation
                      ? screenWidth * 0.1
                      : -screenWidth, // Start from outside screen

                  top: screenHeight * 0.35,
                  duration: Duration(seconds: 1),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
