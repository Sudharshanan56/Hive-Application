// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';
//
//
//
// class MockMasterScreen extends StatelessWidget {
//   List txt=["Time Management: Practice under\ntimed conditions to improve speed\nand accuracy. ",
//             "Review Mistakes: Learn from errors\nto strengthen weak areas and\nboost confidence.",
//             "Focus on Key Topics: Prioritize\nhigh-weightage subjects and\nfrequently tested concepts."
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text(
//           'Mock Master',
//           style: TextStyle(
//             color: Colors.black,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout, color: Colors.black),
//             onPressed: () {},
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             _buildTodayTaskCard(),
//             _buildPerformanceCard(),
//             _buildInfoCard(),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildTodayTaskCard() {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Container(
//         height: 200,
//         width: 380,
//         decoration: BoxDecoration(
//           // color: Colors.redAccent,
//           gradient: LinearGradient(
//             begin: Alignment.bottomLeft,
//             end: Alignment.topRight,
//             colors: [ Colors.red, Colors.redAccent],
//           ),
//           borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 10,),
//               Row(
//                 children: [
//                   Text(
//                     'Today Task',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 24,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(width: 80),
//                   Text(
//                     '12th Dec 2024',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 16),
//               ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Colors.white,
//                   foregroundColor: Colors.redAccent,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//                 onPressed: () {
//                   _showEmailVerificationSheet();
//                 },
//                 child: const Text('Begin Now!',style: TextStyle(fontWeight: FontWeight.bold),),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//   void _showEmailVerificationSheet(BuildContext context) {
//     showModalBottomSheet<void>(
//       context: context,
//       isDismissible: false,
//       enableDrag: false,
//       builder: (BuildContext context) {
//         return Container(
//           height: 200,
//           color: Colors.white,
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Icon(Icons.camera_alt),
//                  Text("Camera Access"),
//                  Text("Allow access to your camera to verify your\nidentify and monitor the exam environment"),
//                  Container(
//                   height: 50,
//                   width: double.infinity,
//                   color: const Color(0xff3C97D3),
//                   child: const Center(
//                     child: Text(
//                       "Verify Email",
//                       style: TextStyle(color: Colors.white, fontSize: 20),
//                     ),
//                   ),
//                 ),
//
//
//             ],
//           ),
//         );
//       },
//     );
//   }
//   Widget _buildPerformanceCard() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(16),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.shade300,
//               blurRadius: 10,
//               offset: Offset(0, 5),
//             ),
//           ],
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             height: 180,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Last Performance',
//                   style: TextStyle(
//                     color: Colors.grey.shade700,
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 Text(
//                   'Highlight!',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 20,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 Text(
//                   'Showcasing Your Best Yet!',
//                   style: TextStyle(
//                     color: Colors.grey.shade500,
//                     fontSize: 14,
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 LinearProgressIndicator(
//                   value: 0.0, // Progress value
//                   backgroundColor: Color(0xFFB1B1FF),
//                   color: Colors.redAccent,
//                 ),
//                 const SizedBox(height: 8),
//                 Align(
//                   alignment: Alignment.centerRight,
//                   child: Text(
//                     '0/100',
//                     style: TextStyle(
//                       color: Colors.grey.shade700,
//                       fontSize: 14,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _buildInfoCard() {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.redAccent,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Container(
//             height: 150,
//             child: CarouselSlider.builder(
//                 options: CarouselOptions(
//                   height: 180.0,
//                   enlargeCenterPage: true,
//                   autoPlay: true,
//                   aspectRatio: 16 / 9,
//                   autoPlayCurve: Curves.fastOutSlowIn,
//                   enableInfiniteScroll: true,
//                   scrollDirection: Axis.horizontal,
//                   autoPlayAnimationDuration: Duration(milliseconds: 800),
//                   viewportFraction: 1,
//
//
//                 ),
//                 itemCount: 3,
//                 itemBuilder: (BuildContext context, int index, int realIndex)
//                 {
//                   return Container(
//                     height: 200,
//                     width: 400,
//                     child: Center(child: Text(txt[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
//                     // decoration: BoxDecoration(
//                     //     image: DecorationImage(
//                     //       image: AssetImage(txt[index]),
//                     //     )
//                     // ),
//                   );
//                 }
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../Dashboard_1.dart';
import 'Mock Test.dart';

class MockMasterScreen extends StatelessWidget {
  final List<String> txt = [
    "Time Management: Practice under\ntimed conditions to improve speed\nand accuracy.",
    "Review Mistakes: Learn from errors\nto strengthen weak areas and\nboost confidence.",
    "Focus on Key Topics: Prioritize\nhigh-weightage subjects and\nfrequently tested concepts."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Mock Master',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.black),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildTodayTaskCard(context),
            _buildPerformanceCard(),
            _buildInfoCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildTodayTaskCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 200,
        width: 380,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [Colors.red, Colors.redAccent],
          ),
          borderRadius: BorderRadius.only(topRight: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text(
                    'Today Task',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 80),
                  const Text(
                    '12th Dec 2024',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Color(0xFFF3434E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  _CameraAccess(context);
                },
                child: const Text(
                  'Begin Now!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _CameraAccess(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isDismissible: false,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(Icons.camera_alt, size: 48, color: Color(0xFFF3434E),),
              const SizedBox(height: 16),
              const Text(
                "Camera Access",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Allow access to your camera to verify your\nidentity and monitor the exam environment.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        _MicrophoneAccess(context);

                      },
                      child:  Text(
                        'Allow',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  //=======================================================
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF3434E),),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                       Navigator.pop(context);
                      },
                      child:  Text(
                        'Deny',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _MicrophoneAccess(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isDismissible: false,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(Icons.mic_none, size: 48, color: Color(0xFFF3434E),),
              const SizedBox(height: 16),
              const Text(
                "Microphone Access",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Allow microphone access to ensure fairness and avoid unauthorized discussions",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        _ScreenAccess(context);
                      },
                      child:  Text(
                        'Allow',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  //=======================================================
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF3434E),),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child:  Text(
                        'Deny',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  //================================================================

  void _ScreenAccess(BuildContext context) {
    showModalBottomSheet<void>(
      context: context,
      isDismissible: false,
      enableDrag: false,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      builder: (BuildContext context) {
        return Container(
          height: 250,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(30),
              topLeft: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Icon(Icons.phone_android_outlined, size: 48, color: Color(0xFFF3434E),),
              const SizedBox(height: 16),
              const Text(
                "Screen Monitoring Access",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "Allow screen access to prevent cheating\n and maintain exam integrity",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 45,
                    width: 150,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>MockTestPage()));                      },
                      child:  Text(
                        'Allow',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 50,),
                  //=======================================================
                  Container(
                    height: 45,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFFF3434E),),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(

                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child:  Text(
                        'Deny',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }



  Widget _buildPerformanceCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 180,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Last Performance',
                  style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Highlight!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Showcasing Your Best Yet!',
                  style: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 16),
                const LinearProgressIndicator(
                  value: 0.0, // Progress value
                  backgroundColor: Color(0xFFB1B1FF),
                  color: Color(0xFFF3434E),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '0/100',
                    style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 14,
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

  Widget _buildInfoCard() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0xFFF3434E),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 150,
            child: CarouselSlider.builder(
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                scrollDirection: Axis.horizontal,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 1,
              ),
              itemCount: txt.length,
              itemBuilder: (BuildContext context, int index, int realIndex) {
                return Center(
                  child: Text(
                    txt[index],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
