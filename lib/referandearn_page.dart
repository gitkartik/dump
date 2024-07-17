import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReferAndEarnPage extends StatefulWidget {
  ReferAndEarnPage({super.key});

  @override
  State<ReferAndEarnPage> createState() => _ReferAndEarnPageState();
}

class _ReferAndEarnPageState extends State<ReferAndEarnPage> {
  List<String> arrNames = ['Share Link with Friends', 'Share Link with Friends'];
  List<String> arrNames1 = ['Sell your books in just 3 seconds', 'Hassle-free Home pickup'];
  List<Item> _data = generateItems();

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Refer And Earn'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/Picture1.png'),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.green[50],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total Friends Joined',
                          style: TextStyle(
                            color: DumpColors.unselectedicncolor,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '0',
                          style: TextStyle(
                            color: DumpColors.blackcolor,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: _mediaQuery.height * 0.06,
                      child: VerticalDivider(
                        width: _mediaQuery.width * 0.07,
                        thickness: 1.0,
                        color: DumpColors.unselectedicncolor,
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          'Total Referral Earning',
                          style: TextStyle(
                            color: DumpColors.unselectedicncolor,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          '0',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 24.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 10, bottom: 10),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '1 Referral = ',
                      style: TextStyle(color: DumpColors.blackcolor),
                    ),
                    TextSpan(
                      text: 'Rs. 25 FLAT Voucher',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'Earn by inviting friends to Bookchor',
                style: TextStyle(color: DumpColors.blackcolor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: _mediaQuery.height * 0.06,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.share,
                    color: DumpColors.textcolor,
                  ),
                  label: Text(
                    'Share Invite',
                    style: TextStyle(
                      color: DumpColors.textcolor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Refer Id',
                  hintStyle: TextStyle(color: Colors.grey.shade500),
                  filled: true,
                  fillColor: Colors.grey.shade200,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Container(
                height: _mediaQuery.height * 0.06,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: DumpColors.textcolor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade900,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16.0),
                    textStyle: TextStyle(fontSize: 16.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                'How it Works?',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: arrNames.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: DumpColors.ambercolor,
                      ),
                      title: Text(
                        arrNames[index],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        arrNames1[index],
                        style: TextStyle(color: DumpColors.unselectedicncolor),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: _buildPanel(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPanel() {
    return ExpansionPanelList(
      elevation: 1,
      expansionCallback: (int index, bool isExpanded) {
        setState(() {
          _data[index].isExpanded = !isExpanded;
        });
      },
      children: _data.map<ExpansionPanel>((Item item) {
        return ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Text(item.headerValue,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),
            );
          },
          body: ListTile(
            title: Text(item.expandedValue),
          ),
          isExpanded: item.isExpanded,
        );
      }).toList(),
    );
  }
}

class Item {
  Item({
    required this.expandedValue,
    required this.headerValue,
    this.isExpanded = false,
  });

  String expandedValue;
  String headerValue;
  bool isExpanded;
}

List<Item> generateItems() {
  return [
    Item(
      headerValue: 'How many minimum books are required to sell?',
      expandedValue: 'You must have 7 books to proceed for the selling process.',
    ),
    Item(
      headerValue: 'Which type of books you did not accept?',
      expandedValue: 'We do not accept pirated, physically distorted, or photocopied content. Workbooks, unauthorized sample material, and notebooks are also not accepted.',
    ),
    Item(
      headerValue: 'Can we reschedule the pick up?',
      expandedValue: "If you're not available on the pickup date, kindly reschedule 24 hours prior to the schedule.",
    ),
    Item(
      headerValue: 'Can we reimburse the amount in case of self-dispatch?',
      expandedValue: 'Yes, you can reimburse the amount in case of self-dispatch.',
    ),
    Item(
      headerValue: 'What will happen if we miss the pickup schedule without informing?',
      expandedValue: 'Logistics expenses will be deducted from your credit for any missed pickup attempt.',
    ),
    Item(
      headerValue: 'How the payment will be credited?',
      expandedValue: 'The amount will be credited either to your Bookchor account as loyalty points or via UPI/Bank transfer. In the latter case, 20% of the total value will be deducted while crediting.',
    ),
  ];
}
