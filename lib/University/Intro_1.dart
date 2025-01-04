import 'package:flutter/material.dart';
import 'package:hive_application/University/Intro_2.dart';



class Intro1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Center(
                  child: Container(
                    height: 400,
                    width: screenWidth * 0.9,
                    child: Image.asset(
                      'assets/u2.png',
                      height: screenHeight * 0.25,
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  children: [
                    Text(
                      "Securely access your\nlearning portal.",
                      style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                      ),
                      // textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: 30),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Enter University email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                // SizedBox(height: 20),

                SizedBox(height: 50),
                ElevatedButton(

                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Intro2()));
                    // Add your form submission logic here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF333333),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Get OTP",
                    style: TextStyle(fontSize: 18,color: Colors.white),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Row(
                    children: [
                      Text(
                        "By registering, you agree to" ,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      Text("our terms.",style: TextStyle(color: Colors.blue,fontSize: 14),textAlign: TextAlign.center,),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}