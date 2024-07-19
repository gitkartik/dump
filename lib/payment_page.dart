import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int _selectedPaymentMethod = 0;
  List<String> arrImagePath = [
    'assets/images/bookchorpay.png',
    'assets/images/upipay.jpg'
  ];
  List<String> arramount =["Total amount receivable ₹ 744.00", "Total amount receivable ₹ 620.00"];
  List<String> arrTitle = ['Bookchor Pay', 'UPI Payment'];
  List<String> arrText = [
    'Get your payment in Bookchor\nPay account',
    'Get your payment in your UPI'
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Select payment method'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...List.generate(arrTitle.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedPaymentMethod = index;
                  });
                },
                child: Container( height: _mediaQuery.height*0.15,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: DumpColors.unselectedicncolor,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  margin: EdgeInsets.only(bottom: 16.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          ListTile(
                            leading: SizedBox(
                              width: _mediaQuery.width * 0.1,
                              height: _mediaQuery.height * 0.1,
                              child: Image.asset(arrImagePath[index]),
                            ),
                            title: Text(
                              arrTitle[index],
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(arrText[index]),
                          ),
                          Positioned(
                            top: 5,
                            right: 5,
                            child: Radio<int>(
                              value: index,
                              groupValue: _selectedPaymentMethod,
                              onChanged: (int? value) {
                                setState(() {
                                  _selectedPaymentMethod = value!;
                                });
                              },
                              activeColor: DumpColors.bluelinkcolor,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 100),
                        child: Text(arramount[index]),
                      )
                    ],
                  ),
                ),
              );
            }),

            SizedBox(height: _mediaQuery.height * 0.02),
            Text(
              'TERMS AND CONDITIONS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: DumpColors.bluelinkcolor,
              ),
            ),
            SizedBox(height: _mediaQuery.height * 0.02),
            Row(
              children: [
                Icon(DumpIcons.icnfillcircle, size: 10, color: DumpColors.unselectedicncolor,),
                SizedBox(width: _mediaQuery.width*0.02,),
                Expanded(
                  child: Text(
                      'The payment will be credited to the selected mode once we receive the books at Bookchor warehouse.'),
                ),
              ],
            ),
            SizedBox(height:_mediaQuery.height*0.01),
            Row(
                children: [
                  Icon(DumpIcons.icnfillcircle, size: 10, color: DumpColors.unselectedicncolor,),
                  SizedBox(width: _mediaQuery.width*0.02,),
                  Expanded(
                    child: Text(
                        '20% Bonus amount will be added to the total payable amount on choosing Bookchor pay.'),
                  ),
                ],
              ),

            Spacer(),
            SizedBox(
              width: double.infinity,
              height: _mediaQuery.height * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  // Handle continue action
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.amber,
                ),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
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
