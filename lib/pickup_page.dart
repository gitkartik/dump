import 'package:dump/orderdetail_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:flutter/material.dart';
import 'package:dump/resources/widgets/global_widget.dart';

class PickupPage extends StatelessWidget {
  const PickupPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    final List<Map<String, String>> pickups = [
      {
        'orderId': 'BCSELL53901028062024',
        'date': '28 Jun 2024',
        'address': 'Muzaffarnagar, Noida shsjsjsj, Muzaffarnagar, UTTAR PRADESH - 560078',
        'status': 'Cancelled',
      },
      {
        'orderId': 'BCSELL53365825062024',
        'date': '28 Jun 2024',
        'address': 'Muzaffarnagar, Noida shsjsjsj, Muzaffarnagar, UTTAR PRADESH - 560078',
        'status': 'Cancelled',
      },
      {
        'orderId': 'BCSELL50567810062024',
        'date': '22 Jun 2024',
        'address': 'Muzaffarnagar, Noida shsjsjsj, Muzaffarnagar, UTTAR PRADESH - 560078',
        'status': 'Cancelled',
      },
    ];

    return Scaffold(
      appBar: setDumpAppBarwithLogo2(context, 'imagepath'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
        Container(
        height: _mediaQuery.height * 0.05,
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Showing ',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    TextSpan(
                      text: 'All Pickups',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                height: _mediaQuery.height * 0.05,
                width: _mediaQuery.width * 0.3,
                decoration: BoxDecoration(
                  border: Border.all(color: DumpColors.blackcolor),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Sort by',
                        style: TextStyle(color: DumpColors.appcolor),
                      ),
                      PopupMenuButton<String>(
                        icon: Icon(
                          Icons.arrow_drop_down,
                          color: DumpColors.unselectedicncolor,
                          size: 30,
                        ),
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                          PopupMenuItem<String>(
                            value: 'sortBy',
                            child: Text('Sort by'),
                          ),
                          PopupMenuItem<String>(
                            value: 'sortByDate',
                            child: Text('Date'),
                          ),
                          PopupMenuItem<String>(
                            value: 'sortByStatus',
                            child: Text('Status'),
                          ),
                        ],
                        onSelected: (String value) {
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),


        SizedBox(height: _mediaQuery.height * 0.01,),
            Expanded(
              child: ListView.builder(
                itemCount: pickups.length,
                itemBuilder: (context, index) {
                  final pickup = pickups[index];
                  return InkWell(
                    onTap: () {
                      if (index == 0) {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> OrderDetailPage(order: pickup)));

                      }
                      else if (index == 1) {

                      }
                      else if (index == 2) {

                      }
                    },
                    child: Card(
                      color: DumpColors.textcolor,
                      margin: EdgeInsets.symmetric(vertical: 5.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: DumpColors.ambercolor,
                                child: Icon(
                                  DumpIcons.icnorder,
                                  color: DumpColors.appcolor,
                                  size: 20,
                                ),
                              ),
                              title: Text('Order ID: ${pickup['orderId']}', style: TextStyle(fontSize: 14),),
                              subtitle: Text(pickup['date']!),
                            ),
                            Divider(),
                            Text(pickup['address']!),
                            SizedBox(height: _mediaQuery.height * 0.01,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  'Status: ${pickup['status']}',
                                  style: TextStyle(color: DumpColors.redcolor),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

