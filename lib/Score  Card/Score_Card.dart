import 'package:flutter/material.dart';

import '../University Profile/University_Profile.dart';

class ScoreCard extends StatefulWidget {
  const ScoreCard({super.key});

  @override
  State<ScoreCard> createState() => _ScoreCardState();
}

class _ScoreCardState extends State<ScoreCard> {
  final List<Map<String, String>> universities = const [
    {
      'name': 'Mari State University',
      'location': 'Moscow, RU',
      'logo': 'assets/7.png',
    },
    {
      'name': 'Asia International University',
      'location': 'Bukhara city, UZ',
      'logo': 'assets/8.png',
    },
    {
      'name': 'Jalal-Abad State University',
      'location': 'Jalal-Abad, KGZ',
      'logo': 'assets/9.png',
    },
    {
      'name': 'TBILISI STATE MEDICAL UNIVERSITY',
      'location': 'Tbilisi, GA',
      'logo': 'assets/10.png',
    },
    {
      'name': 'GEORGIA MEDICAL COLLEGE',
      'location': 'Augusta, GA',
      'logo': 'assets/11.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFFCFEFF),
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios),
          ),
          title: Row(
            children: [
              Text(
                'Score Card',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E293B),
                  fontSize: screenWidth * 0.05,
                ),
              ),
            ],
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            // Padding(
            //   padding: EdgeInsets.only(top: 50),
            //   child: Hero(
            //     tag: 'scorecard',
            //     child: Container(
            //       width: screenWidth * 0.9, // Corrected width
            //       height: 180,
            //       decoration: BoxDecoration(
            //         color: Color(0xFFF4FAFF),
            //         //  border: Border.all(color: Colors.black),
            //         borderRadius: BorderRadius.circular(15),
            //         boxShadow: [
            //           BoxShadow(
            //             color: Colors.black.withOpacity(0.1),
            //             blurRadius: 10,
            //             offset: const Offset(0, 5),
            //           ),
            //         ],
            //       ),
            //       child: Padding(
            //         padding: EdgeInsets.all(16.0),
            //         child: Row(
            //           // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             // Circular Score
            //             Stack(
            //               alignment: Alignment.center,
            //               children: [
            //                 // Container(
            //                 //   width: 80,
            //                 //   height: 80,
            //                 //   decoration: BoxDecoration(
            //                 //     shape: BoxShape.circle,
            //                 //     border: Border.all(color: Colors.red),
            //                 //     // color: Color(0xffe8f2fa),
            //                 //   ),
            //                 // ),
            //                 // Container(
            //                 //   width: 70,
            //                 //   height: 70,
            //                 //   decoration: const BoxDecoration(
            //                 //     shape: BoxShape.circle,
            //                 //     color: Color(0xff3c97d3),
            //                 //   ),
            //                 //   child: const Center(
            //                 //     child: Text(
            //                 //       '97',
            //                 //       style: TextStyle(
            //                 //         fontSize: 22,
            //                 //         fontWeight: FontWeight.bold,
            //                 //         color: Colors.white,
            //                 //       ),
            //                 //     ),
            //                 //   ),
            //                 // ),
            //                 CircleAvatar(
            //                   radius: 60,
            //                   backgroundColor: Color.fromARGB(28, 33, 149, 243),
            //                   child: CircleAvatar(
            //                     radius: 50,
            //                     backgroundColor: Color(0xFF5F99BF),
            //                     child: Text(
            //                       '97',
            //                       style: TextStyle(
            //                         fontSize: screenWidth * 0.08,
            //                         fontWeight: FontWeight.bold,
            //                         color: Colors.white,
            //                       ),
            //                     ),
            //                   ),
            //                 ),
            //               ],
            //             ),
            //             // Text and Information
            //             SizedBox(
            //               width: screenWidth * 0.07,
            //             ),
            //             Column(
            //               mainAxisAlignment: MainAxisAlignment.center,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 Text(
            //                   'Achieve MBBS\nAverage Excellence!',
            //                   style: TextStyle(
            //                     fontSize: 16,
            //                     fontWeight: FontWeight.w600,
            //                     color: Color(0xFF22465E),
            //                   ),
            //                 ),
            //                 SizedBox(height: 16),
            //                 Row(
            //                   children: [
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           '97',
            //                           style: TextStyle(
            //                             fontSize: 20,
            //                             fontWeight: FontWeight.bold,
            //                             color: Color(0xFF5F99BF),
            //                           ),
            //                         ),
            //                         Text(
            //                           'Highest',
            //                           style: TextStyle(
            //                             fontSize: 14,
            //                             color: Color(0xFF5F99BF),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                     SizedBox(width: 30),
            //                     Column(
            //                       crossAxisAlignment: CrossAxisAlignment.start,
            //                       children: [
            //                         Text(
            //                           '75',
            //                           style: TextStyle(
            //                             fontSize: 20,
            //                             fontWeight: FontWeight.bold,
            //                             color: Color(0xFF5F99BF),
            //                           ),
            //                         ),
            //                         Text(
            //                           'Lowest',
            //                           style: TextStyle(
            //                             fontSize: 14,
            //                             color: Color(0xFF5F99BF),
            //                           ),
            //                         ),
            //                       ],
            //                     ),
            //                   ],
            //                 ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Hero(
                tag: 'scorecard',
                child: Container(
                  width: screenWidth *
                      0.9, // Ensure it fits within the screen width
                  height: 180,
                  decoration: BoxDecoration(
                    color: Color(0xFFF4FAFF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween, // Spread items evenly
                      children: [
                        // Circular Score
                        Flexible(
                          flex: 2, // Controls size ratio
                          child: CircleAvatar(
                            radius: 50,
                            backgroundColor: Color.fromARGB(28, 33, 149, 243),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundColor: Color(0xFF5F99BF),
                              child: Text(
                                '97',
                                style: TextStyle(
                                  fontSize: screenWidth * 0.08,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: screenWidth * 0.05), // Small gap

                        // Text and Information
                        Expanded(
                          flex:
                              3, // Allow text to expand while keeping responsiveness
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Achieve MBBS\nAverage Excellence!',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF22465E),
                                ),
                                maxLines: 2, // Prevents text overflow
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 12),
                              Row(
                                children: [
                                  // Highest Score
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '97',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5F99BF),
                                          ),
                                        ),
                                        Text(
                                          'Highest',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF5F99BF),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),

                                  // Lowest Score
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '75',
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Color(0xFF5F99BF),
                                          ),
                                        ),
                                        Text(
                                          'Lowest',
                                          style: TextStyle(
                                            fontSize: 14,
                                            color: Color(0xFF5F99BF),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: screenHeight * 0.05,
            ),
            Row(
              children: [
                SizedBox(
                  width: screenWidth * 0.050,
                ),
                Text(
                  "Universities",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.05,
                    color: Color(0xFF111111),
                    // fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            //   child: Container(
            //     height: screenHeight * 0.06,
            //     width: screenWidth * 0.9,
            //     decoration: BoxDecoration(
            //       border: Border.all(),
            //       borderRadius: BorderRadius.circular(screenWidth * 0.06),
            //     ),
            //     child: Padding(
            //       padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            //       child: TextFormField(
            //         decoration: InputDecoration(
            //           border: InputBorder.none,
            //           prefixIcon: Icon(Icons.search, size: screenWidth * 0.06),
            //           hintText: "Search",
            //         ),
            //       ),
            //     ),
            //   ),
            // ),
            SizedBox(height: 20),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UniversityProfile(),
                    ),
                  );
                },
                child: ListView.builder(
                  itemCount: universities.length,
                  itemBuilder: (context, index) {
                    final university = universities[index];
                    return Column(
                      children: [
                        ListTile(
                          leading: Container(
                            height: screenHeight * 0.18,
                            width: screenWidth * 0.13,
                            // height: 50,
                            // width: 50,
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                borderRadius: BorderRadius.circular(100)),
                            child: Image(
                              image: AssetImage(university['logo']!),
                              fit: BoxFit.contain,
                            ),
                          ),
                          // CircleAvatar(
                          //   radius: screenWidth * 0.07,
                          //   backgroundImage: AssetImage(university['logo']!),
                          // ),
                          title: Text(
                            university['name']!,
                            style: TextStyle(fontSize: screenWidth * 0.040),
                          ),
                          subtitle: Row(
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                size: screenWidth * 0.04,
                              ),
                              Text(
                                university['location']!,
                                style: TextStyle(fontSize: screenWidth * 0.03),
                              ),
                            ],
                          ),
                        ),
                        Divider(thickness: 1, height: screenHeight * 0.02),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
