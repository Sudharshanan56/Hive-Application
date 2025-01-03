import 'package:flutter/material.dart';
class OnlineExam extends StatefulWidget {
  const OnlineExam({super.key});

  @override
  State<OnlineExam> createState() => _OnlineExamState();
}

class _OnlineExamState extends State<OnlineExam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3C97D3),

      appBar: AppBar(
        backgroundColor: Color(0xff3C97D3),
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
            child: Text("Ace Your Medical\nEntrance with Ease!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: Colors.white),),
          ),
          SizedBox(height: 25,),
          Padding(
            padding: const EdgeInsets.only(left: 26),
            child: Text("Track performance, check\n eligibility, access expert tips,\n and take mock tests—all in one\n app designed for medical\n entrance exam success!",style: TextStyle(fontSize: 18,color: Colors.white,fontFamily: 'poppins',letterSpacing: 3.0),),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 250,top: 20),
            child: CircleAvatar(
              radius: 20,
              child: Icon(Icons.arrow_right_alt,size: 30,),
            ),
          )
        ],
      ),
    );

  }
}
