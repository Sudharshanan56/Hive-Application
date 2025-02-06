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
  bool _startAnimation = false;
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        _startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // Get the screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff3C97D3),
        // appBar: AppBar(
        //   backgroundColor: const Color(0xff3C97D3),
        //   leading: Padding(
        //     padding: const EdgeInsets.all(12.0),
        //     child: GestureDetector(
        //       onTap: () => Navigator.pop(context),
        //       child: const CircleAvatar(
        //         radius: 1,
        //         backgroundColor: Color(0xff1d1d1d66),
        //         child: Icon(
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
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: CircleAvatar(
                  radius: 25.0,
                  backgroundColor: Color(0xff1d1d1d66),
      
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  // Icon(
                  //   Icons.arrow_back_ios,
                  //   color: Colors.white,
                  // ),
                ),
              ),
              AnimatedPositioned(
                  child: Container(
                    height: screenHeight * 0.16,
                    width: screenWidth * 0.4,
                    child: Image.asset(
                      'assets/R1.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  duration: Duration(seconds: 1),
                  curve: Curves.easeInOut,
                  left: _startAnimation ? screenWidth * 0.60 : screenWidth,
                  top:
                      _startAnimation ? screenHeight * 0.010 : screenHeight * -1.0
                  // right: _startAnimation ? 0.0 : -100,
                  ),
              AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.15,
                  width: screenWidth * 0.35,
                  // decoration:
                  //     BoxDecoration(border: Border.all(color: Colors.black)),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Image.asset(
                      "assets/R2.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                top: screenHeight * 0.40,
                left: _startAnimation ? screenWidth * 0.005 : screenWidth * -1.0,
              ),
      
              AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.16,
                  width: screenWidth * 0.35,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black),
                  // ),
                  child: Image.asset(
                    "assets/R3.png",
                    fit: BoxFit.fill,
                  ),
                ),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                top: screenHeight * 0.65,
                left: _startAnimation ? screenWidth * 0.50 : screenWidth * 2.50,
                // right: screenWidth * 0.15,
              ),
      
              AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.15,
                  width: screenWidth * 0.35,
                  // decoration: BoxDecoration(
                  //   border: Border.all(color: Colors.black),
                  // ),
                  child: Image.asset(
                    "assets/R4.png",
                    fit: BoxFit.fill,
                  ),
                ),
                duration: Duration(seconds: 1),
                top: _startAnimation ? screenHeight * 0.92 : screenHeight * 1.5,
              ),
      
              // AnimatedPositioned(
              //   child: Container(
              //     child: Image.assets("assets/R4.png"),
              //   ),
              //   duration: Duration(seconds: 1),
              // )
      
              // Positioned(
              Stack(
                children: [
                  AnimatedPositioned(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenHeight * 0.2),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: screenWidth * 0.1),
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
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.05),
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
                    duration: Duration(seconds: 1),
                    left:
                        _startAnimation ? screenWidth * 0.05 : screenWidth * -1.0,
                    top: screenHeight * 0.12,
                  ),
                ],
              ),
            ],
          );
        }
      )
      ),
    );
    
  }
}
