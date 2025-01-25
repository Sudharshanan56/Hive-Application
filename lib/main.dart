import 'package:flutter/material.dart';
import 'package:hive_application/Credentials/Credentials_1.dart';
import 'package:hive_application/HomePage/HomePage1.dart';
import 'package:hive_application/HomePage/HomePage_Without_email.dart';
import 'package:hive_application/Intro/Page_1.dart';
import 'package:hive_application/Intro/Page_2.dart';
import 'package:hive_application/Intro/Page_3.dart';
import 'package:hive_application/Intro/Page_4.dart';
import 'package:hive_application/Intro/Page_5.dart';
import 'package:hive_application/OTP/otp_1.dart';

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
      home: HomepageWithoutEmail(),
    );
  }
}
