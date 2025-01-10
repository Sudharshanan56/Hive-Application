import 'package:flutter/material.dart';
import 'package:hive_application/Intro/Page_2.dart';
import 'package:hive_application/Intro/Page_3.dart';
import 'package:hive_application/Intro/Page_4.dart';
// import 'package:hive_application/MockMaster/MockMaster_1.dart';
import 'package:hive_application/Responsive/Res_2.dart';
import 'package:hive_application/University/Intro_2.dart';
import 'package:hive_application/University/Intro_3.dart';

import 'Bottom Navigation Bar/Navigation 1.dart';
import 'Credentials/Credentials_1.dart';
import 'Dashboard/Dashboard_1.dart';
import 'Dashboard/Exam Cracker/Exam Cracker 1.dart';
import 'Dashboard/MockMaster/Mock Test.dart';
import 'Dashboard/MockMaster/MockMaster_2.dart';
import 'Dashboard/Online Exam/Online Exam 1.dart';
import 'HomePage/HomePage1.dart';
import 'Intro/Page_1.dart';
import 'Intro/Page_5.dart';
// import 'Intro/Test_Indicator.dart';
import 'List/List_1.dart';
import 'Notification/Notification_1.dart';
import 'OTP/otp_1.dart';
import 'PlayGround/Count_down_sample.dart';
import 'PlayGround/OTP_animation.dart';
import 'PlayGround/navi.dart';
import 'PlayGround/navi2.dart';
import 'PlayGround/sample3.dart';
import 'PlayGround/sample4.dart';
import 'Profile Page/Profile Edit.dart';
import 'Profile Page/Profile_1.dart';
import 'Profile Page/Profile_Settings.dart';
import 'Responsive/Res_1.dart';
import 'University/Bottom_Navigation.dart';
import 'University/Dashboard.dart';
import 'University/Help & support.dart';
import 'University/Intro_1.dart';
import 'University/Intro_4.dart';
import 'University/Manual location.dart';
import 'University/Notification.dart';
import 'University/Profile Setup.dart';
import 'University/Screen_1.dart';
import 'University/Screen_2.dart';
import 'University/Settings.dart';
import 'University/Viewall_univprofile.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home: Page1(),
    );
  }
}
