import 'package:dump/address_page.dart';
import 'package:dump/donatebooks_page.dart';
import 'package:dump/mybooks_page.dart';
import 'package:dump/myearning_page.dart';
import 'package:dump/profile_page.dart';
import 'package:dump/referandearn_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/sellhistory_page.dart';
import 'package:dump/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AccountPage extends StatelessWidget {
  final List<String> arrAcountList = [
    'Address',
    'Sell History',
    'My Books',
    'My Earning',
    'Refer And Earn',
    'Donate Books',
    'Settings',
    'Contact Us'
  ];

  final List<IconData> arrIcons = [
    DumpIcons.icnlocation,
    DumpIcons.icnhistory,
    DumpIcons.icnbook,
    DumpIcons.icnrupee,
    DumpIcons.incshare,
    DumpIcons.icnoutlinedbook,
    DumpIcons.icnsetting,
    DumpIcons.icncontactphn
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: DumpColors.appcolor,
          title: Text(
            'Account',
            style: TextStyle(
              color: DumpColors.textcolor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          flexibleSpace: Padding(
            padding: const EdgeInsets.only(top: 100, left: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: DumpColors.bluelinkcolor,
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: DumpColors.textcolor,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Anshika Sharma',
                          style: TextStyle(
                            color: DumpColors.textcolor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '+91 9990022213',
                          style: TextStyle(color: DumpColors.textcolor),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                      },
                      icon: Icon(
                        DumpIcons.icnforwardarrow,
                        color: DumpColors.textcolor,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            PopupMenuButton<String>(
              onSelected: (value) {
                print(value);
              },
              icon: Icon(Icons.more_vert, color: Colors.white),
              itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem<String>(
                    child: Text('How it works?'),
                  ),
                  PopupMenuItem<String>(
                    child: Text('FAQ'),
                  ),
                  PopupMenuItem<String>(
                    child: Text('Help'),
                  ),
                ];
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: arrAcountList.length,
          itemBuilder: (context, index) {
            return Card(color: Colors.white,
              elevation: 1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),

              child: Container(
                height: _mediaQuery.height * 0.07,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Center(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: DumpColors.bgcolor,
                      child: Icon(arrIcons[index], color: DumpColors.appcolor),
                    ),
                    title: Text(arrAcountList[index]),
                    onTap: () {
                      if (index == 7) {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Row(
                                children: [
                                  CircleAvatar(child: Image.asset('assets/images/whatsapplogo.png')),
                                  SizedBox(width: _mediaQuery.width * 0.02),
                                  Text("9653531218", style: TextStyle(fontSize: 14, color: DumpColors.bluelinkcolor ),)
                                ],
                              ),
                              content: Row(
                                children: [
                                  CircleAvatar(child: Image.asset('assets/images/bookchorlogo.png')),
                                  SizedBox(width: _mediaQuery.width * 0.02),
                                  Text("dump@bookchor.com", style: TextStyle(fontSize: 14, color: DumpColors.bluelinkcolor ),)
                                ],
                              ),
                              actions: [
                                Container(
                                  height: _mediaQuery.height * 0.05,
                                  width: _mediaQuery.width * 0.2,
                                  color: DumpColors.bgcolor,
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: Center(child: Text('Close')),
                                  ),
                                )
                              ],
                            );
                          },
                        );
                      } else {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          switch (index) {
                            case 0:
                              return AddressPage();
                            case 1:
                              return SellHistoryPage();
                            case 2:
                              return MyBooksPage();
                            case 3:
                              return MyEarningPage();
                            case 4:
                              return ReferAndEarnPage();
                            case 5:
                              return DonateBooksPage();
                            case 6:
                              return SettingPage();
                            default:
                              return AccountPage();
                          }
                        }));
                      }
                    },
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
