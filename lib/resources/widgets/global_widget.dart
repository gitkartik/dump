import 'package:dump/address_page.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:flutter/widgets.dart';

setDumpAppBar(BuildContext context, String appBarTitle) {
  return AppBar(
    leading: IconButton(onPressed: (){Navigator.pop(context);},icon: Icon(DumpIcons.icnbackarrow, color: DumpColors.textcolor,),),
    backgroundColor: DumpColors.appcolor,
    title: Text(
      appBarTitle,
      style: TextStyle(color: DumpColors.textcolor, fontWeight: FontWeight.bold, fontSize: 16),
    ),
  );
}

 setDumpAppBarwithLogo(BuildContext context, String imagepath) {
  var _mediaquery = MediaQuery.of(context).size;
  return AppBar(
    automaticallyImplyLeading: false,
    leading: Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Current Location', style: TextStyle(fontSize: 5.5, color: DumpColors.textcolor, fontWeight: FontWeight.bold)),
        Row(mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text('Your address', style: TextStyle(fontSize: 8, color: DumpColors.textcolor, fontWeight: FontWeight.bold)),
            ),
            Expanded(
              child: IconButton(
                onPressed: () {},
                icon: Icon(DumpIcons.icndropdownarrow, size: 14,color: DumpColors.textcolor,),
              ),
            ),
          ],
        ),
      ],
    ),
    title: Image.asset('assets/images/dumplogo.png', height: _mediaquery.height*0.15, width: _mediaquery.width*0.2,),
    centerTitle: true,
    actions: [
      PopupMenuButton<String>(
        onSelected: (value) {
          print(value);
        },
        icon: Icon(DumpIcons.icnactions, color: Colors.white),
        itemBuilder: (BuildContext context) {
          return [
            PopupMenuItem<String>(
              value: 'FAQ',
              child: Text('FAQ'),
            ),
            PopupMenuItem<String>(
              value: 'Help',
              child: Text('Help'),
            ),
          ];
        },
      ),
    ],
    backgroundColor: DumpColors.appcolor,
  );
}
setDumpAppBarwithLogo2(BuildContext context, String imagepath) {
  var _mediaquery = MediaQuery.of(context).size;
  return PreferredSize( preferredSize: Size.fromHeight(75.0),
    child: AppBar(
      automaticallyImplyLeading: false,
      title:Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Container(width: _mediaquery.width*0.35, height: _mediaquery.height*0.07,
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Current Location', style: TextStyle(fontSize: 12, color: DumpColors.textcolor,)),
                  Padding(
                    padding: const EdgeInsets.only(bottom:08),
                    child: Row(
                      children: [
                        Text('Your address', style: TextStyle(fontSize: 14, color: DumpColors.textcolor, fontWeight: FontWeight.bold)),
                        IconButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> AddressPage()));
                            },
                          icon: Icon(DumpIcons.icndropdownarrow, size: 24,color: DumpColors.textcolor,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Image.asset('assets/images/dumplogo.png', height: _mediaquery.height*0.2, width: _mediaquery.width*0.3,),
          ),
        ],
      ),
      centerTitle: true,
      actions: [
        PopupMenuButton<String>(
          onSelected: (value) {
            print(value);
          },
          icon: Icon(DumpIcons.icnactions, color: Colors.white),
          itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem<String>(
                value: 'FAQ',
                child: Text('FAQ'),
              ),
              PopupMenuItem<String>(
                value: 'Help',
                child: Text('Help'),
              ),
            ];
          },
        ),
      ],
      backgroundColor: DumpColors.appcolor,
    ),
  );
}