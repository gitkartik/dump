import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';

class OrderDetailPage extends StatelessWidget {
  final Map<String, String> order;

  const OrderDetailPage({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DumpColors.appcolor,
        title: Text('Order ID : ${order['orderId']}'),
      ),
      body: SingleChildScrollView (
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: DumpColors.ambercolor,
                  child: Icon(DumpIcons.icnorder, color: DumpColors.appcolor, size: 20),
                ),
                title: Text('Order ID : ${order['orderId']}',style: TextStyle(fontSize: 14)),
                subtitle: Text(order['date']!),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                child:Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Pickup Status', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text(order['status']!, style: TextStyle(color: DumpColors.redcolor)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Amount', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('₹2160', style: TextStyle(color:  DumpColors.redcolor)),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Books', style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('18'),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Payment Mode: ',
                            style: TextStyle(color: DumpColors.unselectedicncolor),
                          ),
                          TextSpan(
                            text: 'Bookchor Pay',
                            style: TextStyle(fontWeight: FontWeight.bold, color: DumpColors.blackcolor),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: _mediaQuery.height*0.01,),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Reason for declaration: ',
                            style: TextStyle(color: DumpColors.unselectedicncolor),
                          ),
                          TextSpan(
                            text: 'Total amount is more than 20% because of this payment mode',
                            style: TextStyle(fontWeight: FontWeight.bold, color: DumpColors.blackcolor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
           Padding(
             padding: const EdgeInsets.only(left: 16, right: 16),
             child: Container(
               child:Column(crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                 Divider(),
                 Text('Address', style: TextStyle(color: DumpColors.unselectedicncolor)),
                 Text('Jatin Pundir', style: TextStyle(fontWeight: FontWeight.bold),),
                 Text('Muzaffarnagar, Noida shsjsjsj, Muzaffarnagar,\nUTTAR PRADESH - 560078Mob:- 6397389990, 7979078040'),
                 SizedBox(height: _mediaQuery.height*0.01,),
                 Text('Exp Pickup Date: ',
                   style: TextStyle(color: DumpColors.unselectedicncolor),),
                 Text('Once your pickup is scheduled, we will let you know.',
                   style: TextStyle(fontWeight: FontWeight.bold, color: DumpColors.blackcolor),),
                 Divider(),
               ]),
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 10),
              child: Text('Track Pickup', style: TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('28 Jun 2024 06:15 PM',),
                      SizedBox(height:_mediaQuery.height*0.03 ),
                      Text('28 Jun 2024 06:47 PM',),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(DumpIcons.icncircle, color: DumpColors.greenaccentcolor,),
                      Container(height:_mediaQuery.height*0.03 ,
                      width: _mediaQuery.width*0.02,
                      color: DumpColors.greenaccentcolor,),
                      Icon(DumpIcons.icncircle, color: DumpColors.greenaccentcolor,),
                    ],
                  ),
                  Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Placed'),
                      SizedBox(height:_mediaQuery.height*0.03 ),
                      Text('Cancelled By User')
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,top: 10, bottom: 10),
              child: Text('Books', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16,right: 16),
              child: Card(
                color: DumpColors.textcolor,
                margin: EdgeInsets.symmetric(vertical: 5.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      ListTile(
                        leading:  Image.asset('assets/images/readbook.png'),
                        title: Text('Ujal', style: TextStyle(fontWeight: FontWeight.bold),),
                        subtitle: Column( crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('154648\nGhj\nGhjk', style: TextStyle(fontSize: 12, color: DumpColors.unselectedicncolor),),
                          ],
                        ),),
                      Divider(),
                      Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          RichText(text: TextSpan(
                            children: [
                              TextSpan(text: 'Selling Amount : ',
                              style: TextStyle(color: DumpColors.blackcolor)),
                              TextSpan(text: '₹ 100',
                              style: TextStyle(color: DumpColors.redcolor))
                            ]
                          ) ),
                          Text('Quantity : 18')
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(height:_mediaQuery.height*0.02, thickness: 3,),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 16),
              child: Text('THINGS TO REMEMBER', style: TextStyle(color: DumpColors.bluelinkcolor,
                fontSize: 16, fontWeight: FontWeight.bold),),
            ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Container(
            child:Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.circle, size: 10, color: DumpColors.unselectedicncolor),
                    SizedBox(width: _mediaQuery.width*0.02,),
                    Expanded(child: Text('We do not accept content that has been pirated, physically altered, or photocopied. We also do not accept workbooks, illegal sample material, registered, or notebooks.',
                      style: TextStyle(fontSize: 13),)),
                  ],
                ),
                SizedBox(height:_mediaQuery.height*0.01),
                Row(
                  children: [
                    Icon(Icons.circle, size: 10, color: DumpColors.unselectedicncolor),
                    SizedBox(width: _mediaQuery.width*0.02,),
                    Expanded(child: Text('We do not accept pirated books. Credit and return will not be given for any pirated book found in the parcel.',
                      style: TextStyle(fontSize: 13),)
                    ),
                  ],
                ),
                SizedBox(height:_mediaQuery.height*0.01),
                Row(
                  children: [
                    Icon(Icons.circle, size: 10, color: DumpColors.unselectedicncolor),
                    SizedBox(width: _mediaQuery.width*0.02,),
                    Expanded(child: Text('If you are unavailable for pickup of your parcel, kindly reschedule the pickup 24 hours in advance. Logistics expenses will be deducted from your credit for missing pickup attempts.',
                      style: TextStyle(fontSize: 13),)),
                  ],
                ),
                SizedBox(height:_mediaQuery.height*0.01),
                Row(
                  children: [
                    Icon(Icons.circle, size: 10,color: DumpColors.unselectedicncolor),
                    SizedBox(width: _mediaQuery.width*0.02,),
                    Expanded(child: Text('The Pickup services are available at select PIN codes. Pickup will be done either by Bookchor Logistics service or our courier partner. If your PIN code is not serviceable you can dispatch the package as per your convenience. We will reimburse the courier charges up to Rs 100 only.',
                      style: TextStyle(fontSize: 13),)),
                  ],
                ),
                SizedBox(height:_mediaQuery.height*0.01),
                Row(
                  children: [
                    Icon(Icons.circle, size: 10,color: DumpColors.unselectedicncolor),
                    SizedBox(width: _mediaQuery.width*0.02,),
                    Expanded(child: Text('The amount will be credited to the selected payment mode once the books are received at Bookchor Warehouse.',
                      style: TextStyle(fontSize: 13),)),
                  ],
                ),
              ],
            ),
          ),
        ),
            Divider(height:_mediaQuery.height*0.02, thickness: 3,),
            Padding(
              padding: const EdgeInsets.only(left:16, top: 10, bottom: 10, right: 16),
              child: Container(
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
            ),
            Divider(height:_mediaQuery.height*0.02, thickness: 3,),
            ListTile(
              leading: Icon(DumpIcons.icnvideo, size: 50, color: DumpColors.greenaccentcolor,),
              title: Text('Video of your books', style: TextStyle(fontWeight: FontWeight.bold),),
              subtitle: Text('Video you uploaded for your pickup',
                style: TextStyle(fontSize: 12, color: DumpColors.unselectedicncolor),),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: DumpColors.textcolor,
                  shadowColor: DumpColors.textcolor,
                  side: BorderSide(color: DumpColors.redcolor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: EdgeInsets.symmetric(vertical: _mediaQuery.height * 0.015),
                  minimumSize: Size(double.infinity, _mediaQuery.height * 0.05),
                ),
                child: Text('Watch Video', style: TextStyle(color: DumpColors.redcolor)),
              ),
            ),
            Divider(height:_mediaQuery.height*0.02, thickness: 3,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container( height: _mediaQuery.height*0.1, width: double.infinity,
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Details', style: TextStyle(fontWeight: FontWeight.bold),),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Items(18)',style: TextStyle(color: DumpColors.unselectedicncolor),),
                        Text('₹2160.00', style: TextStyle(color: DumpColors.unselectedicncolor),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Pickup Charges',style: TextStyle(color: DumpColors.unselectedicncolor),),
                        Text('FREE', style: TextStyle(color: DumpColors.greenaccentcolor),),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Price',  style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('₹2160.00', style:  TextStyle(fontWeight: FontWeight.bold),)
                      ],
                    )
                  ],
                ),

              ),
            )



          ],
        ),
      ),
    );
  }
}
