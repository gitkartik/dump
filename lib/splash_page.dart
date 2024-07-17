import 'package:flutter/material.dart';

import 'features/home_feature/bottom_navbar.dart';


class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavBar()),
      );
    });

    return Scaffold(
      body: Center(
        child: Image.asset('assets/images/splashlogo.png'),
      ),
    );
  }
}
