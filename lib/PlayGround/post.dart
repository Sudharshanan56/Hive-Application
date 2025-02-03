import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Padding(
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
                  backgroundImage:
                      AssetImage('assets/7.png'), // Update with your asset
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
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size(double.infinity, screenHeight * 0.06),
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
    );
  }
}
