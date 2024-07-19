import 'package:dump/resources/colors/dump_colors.dart';
import 'package:flutter/material.dart';
import 'package:dump/features/home_feature/bottom_navbar.dart';  // Ensure correct path

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBar()),
      );
    });

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: DumpColors.blackcolor,
        child: Center(
          child: Image.asset(
            'assets/images/dumplogo.png',
            height: 200,
            width: 300,
          ),
        ),
      ),
    );
  }
}
