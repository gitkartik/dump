

import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';

class SellHistoryPage extends StatelessWidget {
  const SellHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Sell History'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container( height: _mediaQuery.height*0.05,
          width: double.infinity, 
          child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                height: _mediaQuery.height*0.05, width: _mediaQuery.width*0.25,
                decoration: BoxDecoration(border: Border.all(color: DumpColors.unselectedicncolor,),
                borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Status'),
                      Icon(Icons.arrow_drop_down, color: DumpColors.unselectedicncolor, size: 40,)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )

    );
  }
}
