import 'package:dump/add_pickupdetails_page.dart';
import 'package:dump/qrscanner_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';


class SellBooksPage extends StatelessWidget {
  const SellBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
    var _mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: setDumpAppBarwithLogo2(context, 'imagepath'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Add Books',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                ElevatedButton(
                  onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=> AddPickupDetails()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: DumpColors.ambercolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    minimumSize: Size(
                        _mediaQuery.width * 0.3, _mediaQuery.height * 0.04),
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
                )
              ],
            ),
            SizedBox(height: _mediaQuery.height * 0.02),
            Row(
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
                                  builder: (context) => QRViewScanner()),
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
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
