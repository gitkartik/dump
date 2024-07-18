import 'package:dump/account_page.dart';
import 'package:dump/before_login_page.dart';
import 'package:dump/splash_page.dart';
import 'package:dump/verifynum_page.dart';

import 'package:flutter/material.dart';

import 'features/home_feature/bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dump',
        debugShowCheckedModeBanner: false,
      home: BeforeLoginPage()
    );
  }
}

