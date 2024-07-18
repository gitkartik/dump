import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:dump/weight_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddPickupDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
  return Scaffold(
    appBar: setDumpAppBar(context, 'Add pick up details'),
    body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: DumpColors.greenaccentcolor,
                minimumSize: Size(_mediaQuery.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add Pickup Address',
                    style: TextStyle(color: DumpColors.blackcolor),
                  ),
                  Icon(DumpIcons.icnforwardarrow, color: DumpColors.unselectedicncolor,)
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: DumpColors.bluelinkcolor,
                minimumSize: Size(_mediaQuery.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Apply Offer',
                    style: TextStyle(color:DumpColors.textcolor),
                  ),
                  Icon(DumpIcons.icnforwardarrow, color: DumpColors.textcolor,)
                ],
              ),
            ),
          ),
          Divider(thickness: 5, color: Colors.grey.shade100,),
          SizedBox(height: _mediaQuery.height*0.02),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Extra notes', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: _mediaQuery.height*0.01),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Note..',
                    hintStyle: TextStyle(color: DumpColors.unselectedicncolor),
                    border: InputBorder.none,
                    fillColor: Colors.grey[100],
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: _mediaQuery.height*0.02),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Column( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Mobile number *', style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: _mediaQuery.height*0.01),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Alternate Mobile number..',
                    hintStyle: TextStyle(color: DumpColors.unselectedicncolor),
                    fillColor: Colors.grey[100],
                    filled: true,
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),

              ],
            ),
          ),
          SizedBox(height: _mediaQuery.height*0.02),
          Divider(thickness: 5, color: Colors.grey.shade100,),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
            child: RichText(
              text: TextSpan(text: 'Note: ',
                style: TextStyle( fontWeight: FontWeight.bold,
                  color:DumpColors.redcolor
                ),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Once your order is approved we will let you know..',
                    style: TextStyle(
                      color:DumpColors.blackcolor,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

          ),
          Divider(thickness: 5, color: Colors.grey.shade100,),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              height: _mediaQuery.height*0.2, width: double.infinity,
            child: Column( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Description', style: TextStyle(fontWeight: FontWeight.bold),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Items (16)',style: TextStyle(color: DumpColors.unselectedicncolor),),
                    Text('₹ 760',style: TextStyle(color: DumpColors.unselectedicncolor),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Pickup Charges',style: TextStyle(color: DumpColors.unselectedicncolor),),
                    Text('FREE',
                      style: TextStyle(color: DumpColors.greenaccentcolor),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Offers',style: TextStyle(color: DumpColors.unselectedicncolor),),
                    Text('Apply',style: TextStyle(color: DumpColors.bluelinkcolor),),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Total Amount',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text('₹ 760',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            ),
          ),

          SizedBox(height: _mediaQuery.height*0.02),
          Padding(
            padding: const EdgeInsets.only(left: 16,),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('₹ 760', style: TextStyle(fontWeight: FontWeight.bold,
                    color: DumpColors.redcolor, fontSize: 16),),
                    Text('Total Books : 16')
                  ],
                ),
                Container( height: _mediaQuery.height*0.07, width: _mediaQuery.width*0.5,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> WeightPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: DumpColors.ambercolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero
                      )
                    ),
                    child: Text('SELL MY BOOKS',
                      style: TextStyle( fontSize: 16,
                        color: DumpColors.appcolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
  }

}