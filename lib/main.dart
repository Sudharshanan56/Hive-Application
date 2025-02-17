import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_application/Countdown/CountDown.dart';
import 'package:hive_application/Credentials/Credentials_1.dart';
import 'package:hive_application/Dashboard/Dashboard_1.dart';
import 'package:hive_application/Dashboard/Exam%20Cracker/Exam%20Cracker%201.dart';
import 'package:hive_application/Dashboard/MockMaster/Mock%20Test.dart';
import 'package:hive_application/Dashboard/MockMaster/Score.dart';
import 'package:hive_application/Dashboard/Online%20Exam/Online%20Exam%201.dart';
import 'package:hive_application/HomePage/HomePage1.dart';
import 'package:hive_application/HomePage/HomePage_Without_email.dart';
import 'package:hive_application/Intro/Page_1.dart';
import 'package:hive_application/Intro/Page_2.dart';
import 'package:hive_application/Intro/Page_3.dart';
import 'package:hive_application/Intro/Page_4.dart';
import 'package:hive_application/Intro/Page_5.dart';
import 'package:hive_application/OTP/otp_1.dart';
import 'package:hive_application/University/Screen_1.dart';
import 'package:hive_application/University/Viewall_univprofile.dart';

import 'Bottom Navigation Bar/Navigation 1.dart';
import 'Dashboard/MockMaster/MockMaster_1.dart';
import 'Dashboard/MockMaster/MockMaster_2.dart';
import 'Notification/Notification_1.dart';
import 'OTP/API Playground/otpEx.dart';
import 'PlayGround/Animated_Positioned.dart';
import 'PlayGround/BottomSheet_Done_Animation.dart';
import 'PlayGround/Color animation/Color_pageRouteBuilder.dart';
import 'PlayGround/Color animation/Hero_Color_animation.dart';
import 'PlayGround/Color animation/PageTransition_blackbox.dart';
import 'PlayGround/New_Profile_Page.dart';
import 'PlayGround/Post_List_Data.dart';
import 'PlayGround/TimerPeriodic.dart';
import 'PlayGround/country picker.dart';
import 'PlayGround/noti_3.dart';
import 'PlayGround/otp api.dart';
import 'Profile Page/Profile Edit.dart';
import 'Profile Page/Profile_1.dart';
import 'Score  Card/Score_Card.dart';
import 'University Profile/University_Profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(), // Apply Poppins globally
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: OTPVerificationScreen(),
    );
  }
}
