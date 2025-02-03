import 'package:flutter/material.dart';

import '../University Profile/University_Profile.dart';

class ScoreCard extends StatelessWidget {
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

  const ScoreCard({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Row(
          children: [
            Text('Score Card'),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Hero(
              tag: 'scorecard',
              child: Container(
                width: screenWidth * 0.9, // Corrected width
                height: 180,
                decoration: BoxDecoration(
                  color: const Color(0xFFF4FAFF),
                  //  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 10,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Circular Score
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xffe8f2fa),
                            ),
                          ),
                          // Container(
                          //   width: 70,
                          //   height: 70,
                          //   decoration: const BoxDecoration(
                          //     shape: BoxShape.circle,
                          //     color: Color(0xff3c97d3),
                          //   ),
                          //   child: const Center(
                          //     child: Text(
                          //       '97',
                          //       style: TextStyle(
                          //         fontSize: 22,
                          //         fontWeight: FontWeight.bold,
                          //         color: Colors.white,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          CircleAvatar(
                            radius: 60,
                            backgroundColor:
                                const Color.fromARGB(92, 158, 158, 158),
                            child: CircleAvatar(
                              radius: 50,
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
                        ],
                      ),
                      // Text and Information
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Achieve MBBS\nAverage Excellence!',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF5F99BF),
                            ),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                              SizedBox(width: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              Text(
                "Universities",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
          const SizedBox(height: 20),
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
                        leading: CircleAvatar(
                          radius: screenWidth * 0.07,
                          backgroundImage: AssetImage(university['logo']!),
                        ),
                        title: Text(
                          university['name']!,
                          style: TextStyle(fontSize: screenWidth * 0.045),
                        ),
                        subtitle: Text(
                          university['location']!,
                          style: TextStyle(fontSize: screenWidth * 0.04),
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
    );
  }
}
