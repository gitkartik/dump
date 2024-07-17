
import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/icons/dump_icons.dart';
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyBooksPage extends StatelessWidget {
  const MyBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'My Books'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column( crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('My Books', style: TextStyle(fontWeight: FontWeight.bold),),
            SizedBox(height: _mediaQuery.height*0.02,),
            Row(
              children: [
                Container(height: _mediaQuery.height*0.06, width: _mediaQuery.width*0.75,
                  decoration: BoxDecoration(border: Border.all(color: Colors.black12),borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: "Enter 13 Digit ISBN",
                        hintStyle:  TextStyle(color: Colors.black12),
                        border: InputBorder.none,
                        suffixIcon: Icon(DumpIcons.icnscan, size: 20,),
                        contentPadding: EdgeInsets.symmetric(horizontal: 8.0),
                    )
                    ),
                  ),
                ),
                Container(height: _mediaQuery.height*0.06, width: _mediaQuery.width*0.15,
                  color: DumpColors.ambercolor,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(DumpIcons.icnsearch),
                  ),

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
