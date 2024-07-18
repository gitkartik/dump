import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';

class MyEarningPage extends StatelessWidget {
  const MyEarningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: setDumpAppBar(context, 'My Earning'),
      body: Center(child: Image.asset('assets/images/Picture2.png')),
    );
  }
}
