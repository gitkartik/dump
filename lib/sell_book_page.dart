import 'package:dump/qrscanner_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';

import 'add_pickupdetails_page.dart';
import 'generate_pickup_page.dart';

class SellBooksPage extends StatefulWidget {
  const SellBooksPage({super.key});

  @override
  State<SellBooksPage> createState() => _SellBooksPageState();
}

class _SellBooksPageState extends State<SellBooksPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    var _mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: setDumpAppBarwithLogo2(context, 'imagepath'),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Books',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPickupDetails(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: DumpColors.ambercolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: Size(
                      _mediaQuery.width * 0.3,
                      _mediaQuery.height * 0.04,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Sell bulk books',
                      style: TextStyle(
                        color: DumpColors.appcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
            child: Row(
              children: [
                Container(
                  height: _mediaQuery.height * 0.06,
                  width: _mediaQuery.width * 0.75,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Enter 13 Digit ISBN",
                        hintStyle: TextStyle(color: Colors.black12),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: Icon(DumpIcons.icnscan, size: 20),
                          onPressed: () async {
                            final result = await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QRViewScanner(),
                              ),
                            );
                            if (result != null) {
                              _controller.text = result;
                            }
                          },
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: _mediaQuery.height * 0.06,
                  width: _mediaQuery.width * 0.15,
                  color: DumpColors.ambercolor,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(DumpIcons.icnsearch),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Books : 1',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Amount : ₹ 20',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Container(
              decoration: BoxDecoration(
                color: DumpColors.textcolor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/images/readbook.png'),
                          title: Text(
                            'Read people like a book',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '546541651',
                                style: TextStyle(
                                  color: DumpColors.unselectedicncolor,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Patrick king',
                                style: TextStyle(
                                  color: DumpColors.unselectedicncolor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Selling Amount : ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '₹ 20',
                                    style: TextStyle(
                                      color: DumpColors.redcolor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(DumpIcons.icnfillremove, color: DumpColors.bluelinkcolor),
                              onPressed: () {
                                // Your remove button logic here
                              },
                            ),
                            Text(
                              '1',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: Icon(DumpIcons.icnfilladd, color: DumpColors.bluelinkcolor),
                              onPressed: () {
                                // Your add button logic here
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.delete_outline, color: DumpColors.unselectedicncolor),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            String selectedReason = 'Select Reason';
                            List<String> reasons = [
                              'Select Reason',
                              'Pick up date not suited for me',
                              'Not worth the value I am getting',
                              'I changed my mind',
                              'No one came for pickup',
                              'My reason is not listed'
                            ];

                            return StatefulBuilder(
                              builder: (context, setState) {
                                return AlertDialog(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.zero,
                                  ),
                                  content: Container(
                                    height: _mediaQuery.height * 0.35,
                                    child: Column(
                                      children: [
                                        Container(
                                          height: _mediaQuery.height * 0.05,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            border: Border.all(
                                              color: DumpColors.blackcolor,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: DropdownButton<String>(
                                              isExpanded: true,
                                              value: selectedReason,
                                              hint: Text('Select Reason', style: TextStyle(fontSize: 14)),
                                              icon: Icon(DumpIcons.icndropdownarrow),
                                              underline: SizedBox(),
                                              onChanged: (String? newValue) {
                                                setState(() {
                                                  selectedReason = newValue!;
                                                });
                                              },
                                              items: reasons.map<DropdownMenuItem<String>>((String value) {
                                                return DropdownMenuItem<String>(
                                                  value: value,
                                                  child: Text(value, style: TextStyle(fontSize: 14)),
                                                );
                                              }).toList(),
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          height: _mediaQuery.height * 0.05,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(5),
                                            color: DumpColors.appcolor,
                                          ),
                                          child: TextButton(
                                            child: Text(
                                              'Continue',
                                              style: TextStyle(color: DumpColors.textcolor),
                                            ),
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              height: _mediaQuery.height * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => GeneratePickupPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  backgroundColor: Colors.amber,
                ),
                child: Text(
                  'SELL MY BOOK',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: DumpColors.appcolor,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
