import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:dump/sell_book_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dump/qrscanner_page.dart';

import 'addbook_page.dart';

class SellBookPage2 extends StatefulWidget{
  @override
  State<SellBookPage2> createState() => _SellBookPage2State();
}

class _SellBookPage2State extends State<SellBookPage2> {
  TextEditingController _controller = TextEditingController();
  void _showBulkSellDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          title: Text('Do you want to sell books in bulk, Please let us know',
            style: TextStyle(fontSize: 16),),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                    labelText: 'Estimated number of books',
                    hintStyle: TextStyle(color: DumpColors.unselectedicncolor)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Pincode',
                    hintStyle: TextStyle(color: DumpColors.unselectedicncolor)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: 'Comment (optional)',
                    hintStyle: TextStyle(color: DumpColors.unselectedicncolor)
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: DumpColors.ambercolor,
              ),
              child: Text('SUBMIT'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('CANCEL'),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
 return Scaffold(
   appBar: setDumpAppBarwithLogo2(context, 'imagepath'),
   body: Column(
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
               onPressed: _showBulkSellDialog,
               style: ElevatedButton.styleFrom(
                 backgroundColor: DumpColors.ambercolor,
                 shape: RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(5),
                 ),
                 minimumSize: Size(
                   _mediaQuery.width * 0.03,
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
           child: Container(
             height: _mediaQuery.height * 0.06,
             width: _mediaQuery.width * 0.90,
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
                   suffixIcon: Row(
                     mainAxisSize: MainAxisSize.min,
                     children: [
                       IconButton(
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
                       Container(
                         height: _mediaQuery.height * 0.06,
                         width: _mediaQuery.width * 0.15,
                         color: DumpColors.ambercolor,
                         child: IconButton(
                           onPressed: () {
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> AddBookPage()));
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SellBooksPage()));
                           },
                           icon: Icon(DumpIcons.icnsearch),
                         ),
                       ),
                     ],
                   ),
                   contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                 ),
               ),
             ),
           )

       ),
     ],
   ),
 );
  }
}