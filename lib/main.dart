import 'package:flutter/material.dart';
import 'package:hive_application/Countdown/CountDown.dart';
import 'package:hive_application/Credentials/Credentials_1.dart';
import 'package:hive_application/Dashboard/Exam%20Cracker/Exam%20Cracker%201.dart';
import 'package:hive_application/Dashboard/MockMaster/Mock%20Test.dart';
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

import 'Dashboard/MockMaster/MockMaster_1.dart';
import 'Dashboard/MockMaster/MockMaster_2.dart';
import 'PlayGround/Animated_Positioned.dart';
import 'PlayGround/Color animation/Color_pageRouteBuilder.dart';
import 'PlayGround/Color animation/Hero_Color_animation.dart';
import 'PlayGround/Color animation/PageTransition_blackbox.dart';
import 'PlayGround/TimerPeriodic.dart';

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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: AccessStatusAppBar(),
    );
  }
}
