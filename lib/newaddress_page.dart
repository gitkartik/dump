
import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/icons/dump_icons.dart';
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewAddressPage extends StatelessWidget {
  final List<String> arrHintNames = [
    'Name', 'Address', 'Street', 'Pincode', 'City', 'State', 'Landmark', 'Contact number'
  ];

  NewAddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'New Address'),
      body: Padding(
        padding:  EdgeInsets.all(16),
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: arrHintNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: arrHintNames[index],
                      labelStyle: TextStyle(
                        color: DumpColors.unselectedicncolor
                      ),
                    ),
                  ),
                );
              },
            ),
            SizedBox(height: _mediaQuery.height * 0.03),
            InkWell(
              onTap: () {
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
          ],
        ),

      ),
    );
  }
}
