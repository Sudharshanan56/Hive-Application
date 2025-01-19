// import 'package:flutter/material.dart';
//
// import '../Search Page/Search page.dart';
// import 'Exam Cracker/Exam Cracker 1.dart';
// import 'MockMaster/MockMaster_1.dart';
// import 'Online Exam/Online Exam 1.dart';
// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       // appBar: AppBar(
//       //   backgroundColor: Colors.white,
//       //   elevation: 0,
//       //   title: Padding(
//       //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//       //     child: Row(
//       //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //       children: [
//       //         Column(
//       //           crossAxisAlignment: CrossAxisAlignment.start,
//       //           children: [
//       //             Text(
//       //               'Hello, Rajasekar',
//       //               style: TextStyle(
//       //                 fontSize: 18,
//       //                 fontWeight: FontWeight.bold,
//       //                 color: Colors.black,
//       //               ),
//       //             ),
//       //             Text(
//       //               'NEET202454321',
//       //               style: TextStyle(
//       //                 fontSize: 14,
//       //                 color: Colors.grey,
//       //               ),
//       //             ),
//       //           ],
//       //         ),
//       //         CircleAvatar(
//       //           backgroundImage: AssetImage('assets/profile.jpg'), // Replace with your image path
//       //           radius: 20,
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 40,),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         'Hello, Rajasekar',
//                         style: TextStyle(
//                           fontSize: 18,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                       SizedBox(height: 10,),
//                       Text(
//                         'NEET202454321',
//                         style: TextStyle(
//                           fontSize: 14,
//                           color: Colors.grey,
//                         ),
//                       ),
//                     ],
//                   ),
//                   CircleAvatar(
//                     backgroundImage: AssetImage('assets/person.png'), // Replace with your image path
//                     radius: 30,
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20,),
//             Container(
//               height: 60,
//               decoration: BoxDecoration(
//                 color: Colors.grey[200],
//                 borderRadius: BorderRadius.circular(30),
//               ),
//               padding: const EdgeInsets.symmetric(horizontal: 30),
//               child: Center(
//                 child: GestureDetector(
//                   onTap: ()=>SearchPage(),
//                   child: TextFormField(
//                     decoration: InputDecoration(
//                       border: InputBorder.none,
//                       prefixIcon: Icon(
//                               Icons.search,
//                               color: Colors.grey,
//                             ),
//                       hintText: "Search",
//                       hintStyle: TextStyle(fontSize: 20),
//                     ),
//
//                   ),
//                 ),
//               ),
//               // child: Row(
//               //   children: [
//               //     Icon(
//               //       Icons.search,
//               //       color: Colors.grey,
//               //     ),
//               //     SizedBox(width: 8),
//               //     Text(
//               //       'Search',
//               //       style: TextStyle(color: Colors.grey, fontSize: 16),
//               //     ),
//               //   ],
//               // ),
//             ),
//             SizedBox(height: 30),
//             Row(
//               children: [
//                 Padding(
//                   padding:  EdgeInsets.only(left: 20),
//                   child: GestureDetector(
//                     onTap: ()=>Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => ExamCracker1()),
//                     ),
//                     child: Container(
//                       height: 200,
//                       width: 175,
//                       child: Stack(children:[Image.asset("assets/17.png",fit: BoxFit.fill,),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20,top: 70),
//                         child: Text("Exam Craker",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 20),),
//                       )],
//                     ),
//                                     ),
//                   ),
//       ),
//                 Padding(
//                   padding: const EdgeInsets.only(bottom: 0),
//                   child: GestureDetector(
//                     onTap: ()=>Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => Mockmaster1()),
//                     ),
//                     child: Container(
//                       height: 200,
//                       width: 150,
//                       child: Stack(children:[ Image.asset("assets/16.png"),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 10,top: 60),
//                           child: Text("MockMaster",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
//                         )
//
//                       ]
//                     ),
//                                     ),
//                   ),
//                 )
//             ],
//             ),
//
//
//             // SizedBox(height: 10),
//             SizedBox(width: 0,),
//             GestureDetector(
//               onTap: ()=>Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => OnlineExam()),
//               ),
//               child: Container(
//                 height: 150,
//                 width: 350,
//                 child: Stack(children:[ Image.asset("assets/15.png",fit: BoxFit.fill,),
//                              Padding(
//                                padding: const EdgeInsets.only(top: 10,left: 10),
//                                child: Text("Crack it Right:",style: TextStyle(color: Colors.white,fontSize: 18),),
//                              ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10,top: 40),
//                     child: Text("Easy Exam Registration",style: TextStyle(color: Colors.white,fontSize: 25),),
//                   ),
//
//                   Padding(
//                     padding: const EdgeInsets.only(left: 10,top: 95),
//                     child: Row(
//                       children: [
//                         Text("Get started",style: TextStyle(color: Colors.white,fontSize: 20),),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Icon(Icons.arrow_forward_outlined,color: Colors.white,),
//                         )
//                       ],
//                     ),
//                   )
//                              ],
//                              //   color: Colors.blue,
//               )
//               ),
//             )
//           ],
//         ),
//
//       )
//     );
//   }
//
//
//
// }

import 'package:flutter/material.dart';

import '../Search Page/Search page.dart';
import 'Exam Cracker/Exam Cracker 1.dart';
import 'MockMaster/MockMaster_1.dart';
import 'Online Exam/Online Exam 1.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(screenWidth * 0.04),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: screenHeight * 0.05),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello, Rajasekar',
                        style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'NEET202454321',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/person.png'),
                    radius: screenWidth * 0.08,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            Container(
              height: screenHeight * 0.07,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
              child: Center(
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: screenWidth * 0.045),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.04),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExamCracker1()),
                  ),
                  child: Container(
                    height: screenHeight * 0.25,
                    width: screenWidth * 0.4,
                    child: Stack(
                      children: [
                        Image.asset(
                          "assets/17.png",
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                          left: screenWidth * 0.05,
                          top: screenHeight * 0.1,
                          child: Text(
                            "Exam Cracker",
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: screenWidth * 0.045,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.05),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Mockmaster1()),
                  ),
                  child: Container(
                    height: screenHeight * 0.25,
                    width: screenWidth * 0.4,
                    child: Stack(
                      children: [
                        Image.asset("assets/16.png"),
                        Positioned(
                          left: screenWidth * 0.03,
                          top: screenHeight * 0.08,
                          child: Text(
                            "MockMaster",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.045,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.03),
            GestureDetector(
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OnlineExam()),
              ),
              child: Container(
                height: screenHeight * 0.2,
                width: screenWidth * 0.9,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/15.png",
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      top: screenHeight * 0.02,
                      left: screenWidth * 0.03,
                      child: Text(
                        "Crack it Right:",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.045,
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenWidth * 0.03,
                      top: screenHeight * 0.06,
                      child: Text(
                        "Easy Exam Registration",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth * 0.06,
                        ),
                      ),
                    ),
                    Positioned(
                      left: screenWidth * 0.03,
                      top: screenHeight * 0.13,
                      child: Row(
                        children: [
                          Text(
                            "Get started",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.045,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(screenWidth * 0.01),
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
