import 'package:flutter/material.dart';
import 'package:hive_application/Dashboard/MockMaster/Mock%20Test.dart';
import 'package:hive_application/Dashboard/MockMaster/MockMaster_2.dart';
import 'package:hive_application/Dashboard/Online%20Exam/Online%20Exam%201.dart';
import 'package:hive_application/HomePage/HomePage1.dart';
import 'package:hive_application/HomePage/HomePage_Without_email.dart';
import 'package:hive_application/Intro/Page_1.dart';
import 'package:hive_application/Intro/Page_2.dart';
import 'package:hive_application/Intro/Page_3.dart';
import 'package:hive_application/OTP/otp_1.dart';
import 'package:hive_application/PlayGround/Comment%20Section.dart';

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
      home: Page3(),
    );
  }
}
