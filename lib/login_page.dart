import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/verifynum_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: _mediaQuery.height*0.1,),
            Text(
              'Login or Signup',
              style: TextStyle(color: DumpColors.appcolor, fontSize: 25),
            ),
            Text('Start with your mobile number'),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                'Mobile number',
                style: TextStyle(color: DumpColors.appcolor),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                prefixText: '+91 | ',
                hintText: 'Enter Mobile Number',
                hintStyle: TextStyle(color: Colors.grey.shade300),
              ),
              keyboardType: TextInputType.number,
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  height: _mediaQuery.height * 0.06,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyNumPage('32000')));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: DumpColors.ambercolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: DumpColors.appcolor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
