// import 'package:flutter/material.dart';
//
// import 'MockMaster_2.dart';
// class Mockmaster1 extends StatefulWidget {
//   const Mockmaster1({super.key});
//
//   @override
//   State<Mockmaster1> createState() => _Mockmaster1State();
// }
//
// class _Mockmaster1State extends State<Mockmaster1> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color(0xffF0101E),
//
//       appBar: AppBar(
//         backgroundColor: Color(0xffF0101E),
//         leading: Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: GestureDetector(
//             onTap: ()=>Navigator.pop(context),
//             child: CircleAvatar(
//               radius: 1,
//               child: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
//               backgroundColor: Color(0xff1D1D1D66),
//               ),
//           ),
//           ),
//         ),
//       body: Column(
//        // mainAxisAlignment: MainAxisAlignment.center,
//         children: [
// SizedBox(height: 200,),
//           Padding(
//             padding: const EdgeInsets.only(right: 98),
//             child: Text("Master Your\nMedical Entrance!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
//           ),
//           SizedBox(height: 25,),
//           Padding(
//             padding: const EdgeInsets.only(left: 26),
//             child: Text("Prepare for success with our \nMedical Entrance Mock Test!\n Sharpen your skills, boost \n confidence, and ace your\n exam with practice tailored to\n your goals.",style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'poppins',letterSpacing: 3.0),),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(right: 250,top: 20),
//             child: GestureDetector(
//               onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>MockMasterScreen())),
//               child: CircleAvatar(
//                 radius: 20,
//                 child: Icon(Icons.arrow_right_alt,size: 30,),
//               ),
//             ),
//           )
//         ],
//       ),
//       );
//
//   }
// }

import 'package:flutter/material.dart';
import 'MockMaster_2.dart';

class Mockmaster1 extends StatefulWidget {
  const Mockmaster1({super.key});

  @override
  State<Mockmaster1> createState() => _Mockmaster1State();
}

class _Mockmaster1State extends State<Mockmaster1> {
  @override
  bool _startAnimation = false;
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 100), () {
      // print("Its working");
      setState(() {
        _startAnimation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    // bool _startAnimation = false;
    // Get screen width and height
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xffF0101E),
        // appBar: AppBar(
        //   backgroundColor: const Color(0xffF0101E),
        //   leading: Padding(
        //     padding: EdgeInsets.all(screenWidth * 0.03),
        //     child: GestureDetector(
        //       onTap: () => Navigator.pop(context),
        //       child: CircleAvatar(
        //         radius: screenWidth * 0.03,
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
              AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.62,
                  width: screenWidth * 0.95,
                  child: Image.asset(
                    "assets/Rect1.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                left: _startAnimation ? 0.0 : screenWidth * -0.50,
                right: screenWidth * 0.50,
                bottom: screenHeight * 0.73,
                top: _startAnimation ? 0.0 : screenWidth * -0.50,
              ),
              AnimatedPositioned(
                  child: Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(),
                    // ),
                    child: Image.asset(
                      "assets/Rect2.png",
                      // fit: BoxFit.fitWidth,
                    ),
                  ),
                  height: screenHeight * 0.62,
                  width: screenWidth * 0.95,
                  left:
                      _startAnimation ? screenWidth * 0.40 : screenWidth * 0.90,
                  duration: Duration(seconds: 1)),
              AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.18,
                  width: screenWidth * 0.60,
                  // decoration: BoxDecoration(
                  //   border: Border.all(),
                  // ),
                  child: Image.asset(
                    "assets/Rect3.png",
                    fit: BoxFit.fitWidth,
                  ),
                ),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
                left: _startAnimation ? 0.0 : screenWidth * -0.50,
                // right: screenWidth * 0.32,
                // bottom: screenHeight * 0.60,
                top: screenHeight * 0.50,
              ),
              AnimatedPositioned(
                child: Container(
                  height: screenHeight * 0.50,
                  width: screenWidth * 0.60,
                  // decoration: BoxDecoration(
                  //   border: Border.all(),
                  // ),
                  child: Image.asset(
                    "assets/Rect4.png",
                    fit: BoxFit.fill,
                  ),
                ),
                // height: screenHeight * 0.30,
                // width: screenWidth * 0.60,
                left: screenWidth * 0.48,
                top: screenHeight * 0.75,
                bottom: _startAnimation ? 0.0 : screenWidth * -0.90,
                right: _startAnimation ? 0.0 : screenWidth * -0.90,
                duration: Duration(seconds: 1),
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
              Container(
                height: screenHeight,
                width: screenWidth,
                // decoration: BoxDecoration(
                //   border: Border.all(),
                // ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.2),
                    Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.25),
                      child: Text(
                        "       Master Your\n       Medical Entrance!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.06,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.07),
                      child: Text(
                        "Prepare for success with our \nMedical Entrance Mock Test!\nSharpen your skills, boost \nconfidence, and ace your\nexam with practice tailored to\nyour goals.",
                        style: TextStyle(
                          fontSize: screenWidth * 0.045,
                          color: Colors.white,
                          fontFamily: 'Poppins',
                          letterSpacing: 2.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: screenWidth * 0.6,
                        top: screenHeight * 0.03,
                        left: screenWidth * 0.07,
                      ),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MockMasterScreen()),
                        ),
                        child: CircleAvatar(
                          radius: screenWidth * 0.06,
                          child: const Icon(
                            Icons.arrow_right_alt,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
