import 'package:dump/newaddress_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  bool _isSelected = false;

  void _toggleIcon() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Manage Address'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> NewAddressPage()));
              },
              child: Container(
                height: _mediaQuery.height * 0.05,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: DumpColors.ambercolor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(DumpIcons.icnadd, size: 18, color: DumpColors.selecteicndcolor),
                    Text(
                      " ADD NEW ADDRESS",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: DumpColors.selecteicndcolor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: _mediaQuery.height * 0.01),
            Container(
              height: _mediaQuery.height * 0.15,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: DumpColors.textcolor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade200,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Anshika Sharma',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(DumpIcons.icnactions),
                  ],
                ),
                subtitle: Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Uttar Pradesh\nPincode:'),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: _toggleIcon,
                              child: Icon(
                                _isSelected
                                    ? Icons.check_box
                                    : DumpIcons.incselectedbox,
                                size: 20, color: _isSelected ? Colors.blue : Colors.black,
                              ),
                            ),
                            Text(' Use this as default ')
                          ],
                        ),
                      ),
                    ],
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
