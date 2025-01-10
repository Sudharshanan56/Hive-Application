import 'package:flutter/material.dart';
class ExamCracker1 extends StatefulWidget {
  const ExamCracker1({super.key});

  @override
  State<ExamCracker1> createState() => _ExamCracker1State();
}

class _ExamCracker1State extends State<ExamCracker1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFDCDB),


      appBar: AppBar(
        backgroundColor: Color(0xffFFDCDB),
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: GestureDetector(
            onTap: ()=>Navigator.pop(context),
            child: CircleAvatar(
              radius: 1,
              child: Icon(Icons.keyboard_arrow_left,color: Colors.white,),
              backgroundColor: Color(0xff1D1D1D66),
            ),
          ),
        ),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 200,),
          Padding(
            padding: const EdgeInsets.only(right: 98),
            child: Text("Master Your\nMedical Entrance!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Color(0xffF45C5C)),),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Text("Prepare for success with our \nMedical Entrance Mock Test!\n Sharpen your skills, boost \n confidence, and ace your\n exam with practice tailored to\n your goals.",style: TextStyle(fontSize: 18,color: Color(0xff9F0000),fontFamily: 'poppins',letterSpacing: 3.0),),
          ),

          // Padding(
          //   padding: const EdgeInsets.only(right: 250,top: 20),
          //   child: CircleAvatar(
          //     radius: 20,
          //     backgroundColor: Colors.white,
          //     child: Icon(Icons.arrow_right_alt,size: 30,),
          //   ),
          // )
        ],
      ),
    );

  }
}
