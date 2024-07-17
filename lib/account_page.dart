import 'package:dump_app/networking/api_service.dart';
import 'package:dump_app/networking/models/globalModel.dart';
import 'package:dump_app/networking/models/requests/account.dart';
import 'package:dump_app/profile_page.dart';
import 'package:dump_app/referandearn_page.dart';
import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/icons/dump_icons.dart';
import 'package:dump_app/sellhistory_page.dart';
import 'package:dump_app/settings_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'address_page.dart';
import 'donatebooks_page.dart';
import 'mybooks_page.dart';
import 'myearning_page.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
ApiService apiService = ApiService();
AccountRequest accountRequest = AccountRequest();


  //@override
  // void initState() {
   // TODO: implement initState
    // super.initState();
    //
    // accountRequest = AccountRequest(token:"47a47a55a48a50a48a54a100" ,dob:"17-03-1999" ,type:"A" ,name:"Kartik" ,email:"kartikchaudhary595@gmail.com" ,mobile:"8938848487" ,sellBookLink:"" ,gender:"Male" ,docType:"" ,otp:"" );
   // onPostList();
    // var data = {
    //   "token":"47a47a55a48a50a48a54a100" ,"dob":"17-03-1999" ,"type":"A" ,"name":"Kartik" ,"email":"kartikchaudhary595@gmail.com" ,"mobile":"8938848487" ,"sellBookLink":"hhhhjjh" ,"gender":"Male" ,"docType":"" ,"otp":"2222"
    // };
    // apiService.getUsers(data);
    // print("kumar");

  //}
  @override
  Widget build(BuildContext context) {

    var _mediaQuery = MediaQuery
        .of(context)
        .size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.blueGrey,
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
                      backgroundColor: Colors.blue,
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
                          '+91 9999999999',
                          style: TextStyle(color: DumpColors.textcolor),
                        ),
                      ],
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (
                            context) => ProfilePage()));
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
                      child: Icon(arrIcons[index], color: Colors.blueGrey),
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
                                  CircleAvatar(child: Image.asset(
                                      'assets/images/whatsapplogo.png')),
                                  SizedBox(width: _mediaQuery.width * 0.02),
                                  Text("9653531218", style: TextStyle(
                                      fontSize: 14,
                                      color: DumpColors.bluelinkcolor),)
                                ],
                              ),
                              content: Row(
                                children: [
                                  CircleAvatar(child: Image.asset(
                                      'assets/images/bookchorlogo.png')),
                                  SizedBox(width: _mediaQuery.width * 0.02),
                                  Text("dump@bookchor.com", style: TextStyle(
                                      fontSize: 14,
                                      color: DumpColors.bluelinkcolor),)
                                ],
                              ),
                              actions: [
                                Container(
                                  height: _mediaQuery.height * 0.05,
                                  width: _mediaQuery.width * 0.2,
                                  color: DumpColors.ambercolor,
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
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

  //  onPostList() async {
  //   //var url ="https://apis-stg.bookchor.com/webservices/bookchor.com/dump/user_profile.php";
  //   var url =
  //   Uri.https(
  //       'https://apis-stg.bookchor.com/webservices/bookchor.com/dump/user_profile.php?token=47a47a55a48a50a48a54a100');
  //
  //   // Await the http get response, then decode the json-formatted response.
  //   var response = await http.get(url);
  //   if (response.statusCode == 200) {
  //     print("Kartik Aayr");
  //     var jsonResponse =
  //     convert.jsonDecode(response.body) as Map<String, dynamic>;
  //     print("response");
  //     print(response);
  //
  //   } else {
  //     print('Request failed with status: ${response.statusCode}.');
  //     //}
  //   }
  // }
}