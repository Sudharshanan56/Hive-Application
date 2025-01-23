
import 'package:flutter/material.dart';

// import '../Credentials/Credentials_1.dart';
import 'Intro_3.dart';



class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  _Intro2State createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  final TextEditingController phoneController = TextEditingController();
  bool isPhoneEntered = false;

  @override
  void initState() {
    super.initState();
    phoneController.addListener(() {
      setState(() {
        isPhoneEntered = phoneController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: SizedBox(
                  height: screenHeight * 0.4,
                  width: screenWidth * 0.9,
                  child: Image.asset(
                    'assets/u3.png',
                    height: screenHeight * 0.25,
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              const Text(
                "Enter your OTP to verify.",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.04),
              const Row(
                children: [
                  Text("OTP sent to ",style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("sample@gmail.com",style: TextStyle(color: Colors.blue),),
                  Icon(Icons.edit),
                ],
              ),

              SizedBox(height: screenHeight * 0.02),
              
              SizedBox(height: screenHeight * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  4,
                      (index) => Container(
                    width: screenWidth * 0.12,
                    height: screenHeight * 0.08,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const TextField(
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                        hintText: "0",
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: screenHeight * 0.02),
              TextButton(
                onPressed: () {
                  // Resend OTP action
                },
                child: const Center(
                  child:  Row(
                    children: [
                      Text(
                        "OTP not received?",
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(" Resend now",style: TextStyle(color: Colors.blue),)
                    ],
                  ),
                  
                ),
              ),
              SizedBox(height: screenHeight * 0.05),
              Center(
                child: ElevatedButton(
                  onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Intro3()));

                    // Handle Get OTP or Verify action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF333333),
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.3,
                      vertical: screenHeight * 0.02,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Verify now",style: TextStyle(
                    fontSize: screenWidth * 0.045,
                    color: Colors.white,
                  ),),
                  // style: TextStyle(
                  //     fontSize: screenWidth * 0.045,
                  //     color: Colors.white,
                  //   ),
                ),
              ),

              SizedBox(height: screenHeight * 0.02),
              const Center(
                child: Row(
                  children: [
                    Text(
                      "By registering, you agree to",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    Text("our terms",style: TextStyle(fontSize: 14, color: Colors.blue),)
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
