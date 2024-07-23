import 'package:dump/features/home_feature/bottom_navbar.dart';
import 'package:dump/home_page.dart';
import 'package:dump/orderdetail_page.dart';
import 'package:dump/pickup_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GeneratePickupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Pickup Generated'),
        body:Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Image.asset('assets/images/dumplogo.png',
                  height:_mediaQuery.height*0.1,),
                  Container(
                    height: _mediaQuery.height * 0.1,
                    width: _mediaQuery.width * 0.15,
                    child: Image.asset(
                      'assets/images/pick_genrated_icon.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                  SizedBox(height: _mediaQuery.height*0.01),
                  Text(
                    'Pick up Generated',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold,
                    color: DumpColors.appcolor ),
                  ),
                         SizedBox(height: _mediaQuery.height*0.01),
                  Text('Thank you for selling.'),
                ],
              ),
            ),
              SizedBox(height: _mediaQuery.height*0.02),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.yellow),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Once Your Pickup is scheduled, We will let you know!'),
                  Divider(),
                  Text('Pickup ID:', style: TextStyle(color: DumpColors.unselectedicncolor),),
                  Text(
                    'BCSELL57528518072024',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    SizedBox(height: _mediaQuery.height*0.01),
                  Text('Address:', style: TextStyle(color: DumpColors.unselectedicncolor),),
                  Text(
                    'Jatin tasting\nbsbbsbs, bshbsbzv, hhshssb, UTTAR PRADESH - 201002\nMob:- 6397398990',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                    SizedBox(height: _mediaQuery.height*0.01),
                  RichText(text: TextSpan(
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                        text: 'Payment Mode : '
                      ),
                      TextSpan(
                        text: ' UPI Payment',
                        style: TextStyle(
                          color: DumpColors.bluelinkcolor
                        ),
                      ),
                    ]
                  )),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Total Books: 18'),
                      Text(
                        'Total Amount: ₹620',
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),
                SizedBox(height: _mediaQuery.height*0.01),
            Center(
              child: TextButton(onPressed: (){
              //  Navigator.push(context, MaterialPageRoute(builder: (context)=> ));
              },
                  child: Text('GO TO PICKUPS', style: TextStyle(color: DumpColors.bluelinkcolor),)),
            ),
            Center(
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> BottomNavBar()));
              },
                  child: Text('GO TO HOME', style: TextStyle(color: DumpColors.bluelinkcolor),)),
            ),
            Container(
              child: Column(
                children: [
                  Center(child: Text("Attention! We don't accept pirated books")),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text('Guidelines'),
                            content: Text('1. Minimum 5 books are required per order.\n'
                                '2. We do not accept damaged, pirated, physically tempered or photocopied articles.\n'
                                '3. Workbooks, illegal copies and notebooks will not be evaluated.\n'
                                '4. 20% Bonus amount will be added for choosing bookchor pay exclusively.\n'
                                'Example:\n'
                                '*Evaluated amount:100\n'
                                'Bookchor pay amount:120\n'
                                '5. A pickup is cancellable before 24 hours of pickup time slot.\n'
                                '6. Pirated and damaged books would not be returned and will be disposed of immediately.'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text('CLOSE'),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text(
                      'View selling guidelines',
                      style: TextStyle(color: DumpColors.bluelinkcolor),
                    ),
                  ),
                ],
              ),
            ),
        
          ],
        ),
      ),
        ));
  }
}
