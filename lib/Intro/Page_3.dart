import 'package:flutter/material.dart';
import 'package:hive_application/Intro/Page_4.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Skip Button

            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 50,right: 20),
                child: TextButton(
                  onPressed: () {
                    // Handle Skip button press
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
            // Main Content
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Illustration Image
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: 400,
                    width: 400,
                    child: Image.asset(
                      'assets/2.png',
                      height: 250,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                //const SizedBox(height: 20),
                // Description Text
                Padding(
                  padding: const EdgeInsets.only(left: 150),
                  child: Row(
                    children: [
                      Container(
                        height: 5,
                        width: 40,
                        color: Color(0xff9BA8B5FF),
                      ),
                      Container(
                        height: 5,
                        width: 40,
                        color: Colors.blue,
                      ),
                      Container(
                        height: 5,
                        width: 40,
                        color: Color(0xff9BA8B5FF),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.0),
                  child: Text(
                          "Access curated articles and tips\n tailored for medical entrance\n preparation.",
                    // textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                ),
                // const SizedBox(height: 20),
                // Indicator

                const Spacer(),
                // Next Button
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 50.0,left: 30,top: 30),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 150, vertical: 20),
                          backgroundColor: Colors.blue, // Button color
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Page4()));

                          // Handle Get Started button press
                        },
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // Terms Text
                Padding(
                  padding: const EdgeInsets.only(bottom: 80),
                  child: Text.rich(
                    TextSpan(
                      text: "By registering, you agree to ",
                      style: const TextStyle(color: Colors.black54, fontSize: 14,fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "our terms.",
                          style: const TextStyle(
                            color: Colors.lightBlueAccent,
                            // decoration: TextDecoration.underline,
                          ),
                          // Add navigation to terms here
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
