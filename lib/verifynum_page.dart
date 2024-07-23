import 'package:dump/features/home_feature/bottom_navbar.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyNumPage extends StatelessWidget {
  final String phoneno;

  VerifyNumPage(this.phoneno);

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      'assets/images/otplogo.png',
                      height: 75,
                      width: 75,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    'Verify Mobile Number',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: DumpColors.appcolor,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        'Enter 4 digit OTP sent to $phoneno',
                        style: TextStyle(fontSize: 15),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Change',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only( top: 10),
                  child: PinCodeTextField(
                    appContext: context,
                    length: 4,
                    keyboardType: TextInputType.number,
                    cursorColor: DumpColors.bluelinkcolor,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(12),
                      fieldHeight: 50,
                      fieldWidth: 80,
                      activeFillColor: Colors.grey.shade200,
                      inactiveFillColor: Colors.grey.shade200,
                      selectedFillColor: Colors.grey.shade200,
                      activeColor: Colors.grey.shade200,
                      inactiveColor: Colors.grey.shade200,
                      selectedColor: Colors.grey.shade200,
                    ),
                    enableActiveFill: true,
                    onChanged: (value) {

                    },
                  ),
                ),

                Row(
                  children: [
                    Icon(Icons.timelapse),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text('Resend OTP in: 57 seconds'),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: _mediaquery.height * 0.06,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBar()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: DumpColors.ambercolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Verify",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: DumpColors.appcolor,
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
