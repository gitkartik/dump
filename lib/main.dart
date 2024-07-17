
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
      home: BottomNavBar(),
    );
  }
}

