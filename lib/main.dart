import 'package:flutter/material.dart';

import 'package:famasiala/screens/login_screen.dart';

import 'screens/otp_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Famasiala',
      home: OTPScreen(),
    );
  }
}
