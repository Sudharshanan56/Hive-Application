import 'package:flutter/material.dart';
import 'package:hive_application/University/Dashboard.dart';
import 'package:like_button/like_button.dart';

import '../PlayGround/sample5.dart';

class UniversityProfile extends StatefulWidget {
  const UniversityProfile({super.key});

  @override
  State<UniversityProfile> createState() => _UniversityProfileState();
}

class _UniversityProfileState extends State<UniversityProfile> {
  final List<ArticleModel> articles = [
    ArticleModel(
      imageUrl: 'assets/person.png',
      title: 'Information was provided on...',
    ),
    ArticleModel(
      imageUrl: 'assets/person.png',
      title: 'Information was provided on...',
    ),
    ArticleModel(
      imageUrl: 'assets/person.png',
      title: 'Information was provided on...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.02),
              // Profile Header
              SizedBox(
                height: screenHeight * 0.25,
                child: Stack(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: screenHeight * 0.18,
                      child: const Image(
                        image: AssetImage("assets/bg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.12,
                      left: screenWidth / 2 - (screenWidth * 0.12),
                      child: CircleAvatar(
                        radius: screenWidth * 0.12,
                        backgroundImage: const AssetImage('assets/7.png'),
                      ),
                    ),
                    Positioned(
                      top: screenHeight * 0.185,
                      left: screenWidth / 2 + (screenWidth * 0.08),
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        radius: screenWidth * 0.05,
                        child: const Icon(
                          Icons.image_outlined,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Text(
                'ASIA INTERNATIONAL UNIVERSITY',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: screenHeight * 0.01),
              Text(
                'Empowering Your Future, Shaping Skilled Professionals',
                style: TextStyle(
                  fontSize: screenWidth * 0.04,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.02),
              const Divider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: screenHeight * 0.05),
                    // University Header
                    Row(
                      children: [
                        CircleAvatar(
                          radius: screenWidth * 0.07,
                          backgroundImage: AssetImage(
                              'assets/7.png'), // Update with your asset
                        ),
                        SizedBox(width: screenWidth * 0.03),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Asia International University',
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Bukhara city, UZ',
                              style: TextStyle(
                                fontSize: screenWidth * 0.035,
                                color: Colors.grey[600],
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Icon(Icons.share, color: Colors.black),
                      ],
                    ),

                    SizedBox(height: screenHeight * 0.02),

                    // Article Title
                    Text(
                      'Information was provided on',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: Colors.grey[700],
                      ),
                    ),
                    Text(
                      'plans in the field of investment',
                      style: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.02),

                    // Article Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/person.png', // Update with your asset
                        width: double.infinity,
                        height: screenHeight * 0.3,
                        fit: BoxFit.cover,
                      ),
                    ),

                    SizedBox(height: screenHeight * 0.02),

                    // Explore Now Button
                    Row(
                      children: [
                        Container(
                          height: screenHeight * 0.06,
                          width: screenWidth * 0.8,
                          child: ElevatedButton(
                            onPressed: () {
                              // Add navigation or functionality here
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF3C97D3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              minimumSize:
                                  Size(double.infinity, screenHeight * 0.06),
                            ),
                            child: Text(
                              'Explore Now',
                              style: TextStyle(
                                fontSize: screenWidth * 0.045,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        LikeButton(),
                      ],
                    ),

                    SizedBox(height: screenHeight * 0.02),

                    // Like Icon
                    // Align(
                    //   alignment: Alignment.centerRight,
                    //   child: Icon(Icons.favorite_border,
                    //       color: Colors.grey, size: screenWidth * 0.07),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
