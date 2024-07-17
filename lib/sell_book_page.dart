
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';

class SellBooksPage extends StatelessWidget {
  const SellBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: setDumpAppBarwithLogo2(context, 'imagepath'),
      body:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Add Books",style: TextStyle(color: Colors.black),),
                   Text("Sell bulk books",style: TextStyle(color: Colors.blue),),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    width: 375,
                    child: TextField(
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(),
                          hintText: 'Enter 13 Digit ISBN'
                      ),
                    ),
                  ),
                )
              ],
            ),
          )

     // Center(child: Image.asset('assets/images/Picture2.png')
     // ),


    );
  }
}
