import 'package:dump/qrscanner_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';
import 'add_pickupdetails_page.dart';


class SellBooksPage extends StatefulWidget {
  const SellBooksPage({super.key});

  @override
  State<SellBooksPage> createState() => _SellBooksPageState();
}

class _SellBooksPageState extends State<SellBooksPage> {
  TextEditingController _controller = TextEditingController();
  int _bookCount = 1;
  double _amountPerBook = 20.0;

  void _incrementCount() {
    setState(() {
      _bookCount++;
    });
  }

  void _decrementCount() {
    if (_bookCount > 1) {
      setState(() {
        _bookCount--;
      });
    }
  }

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
        crossAxisAlignment: CrossAxisAlignment.start,
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
                            onPressed: () {},
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
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Books : $_bookCount',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Amount : ₹ ${_bookCount * _amountPerBook}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Container(
              decoration: BoxDecoration(
                color: DumpColors.textcolor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Image.asset('assets/images/readbook.png'),
                          title: Text(
                            'Read people like a book',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '546541651',
                                style: TextStyle(
                                  color: DumpColors.unselectedicncolor,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                'Patrick king',
                                style: TextStyle(
                                  color: DumpColors.unselectedicncolor,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(),
                        Row(
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Selling Amount : ',
                                    style: TextStyle(color: Colors.black),
                                  ),
                                  TextSpan(
                                    text: '₹ 20',
                                    style: TextStyle(
                                      color: DumpColors.redcolor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              icon: Icon(DumpIcons.icnfillremove, color: DumpColors.bluelinkcolor),
                              onPressed: _decrementCount,
                            ),
                            Text(
                              '$_bookCount',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            IconButton(
                              icon: Icon(DumpIcons.icnfilladd, color: DumpColors.bluelinkcolor),
                              onPressed: _incrementCount,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 10,
                    right: 5,
                    child: InkWell(onTap: (){},
                      child: ClipRRect(
                        child: Image.asset('assets/images/delete_icon.png',
                          height: _mediaQuery.height*0.025,
                          width: _mediaQuery.width*0.05,
                          fit: BoxFit.fill,
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: SizedBox(
              width: double.infinity,
              height: _mediaQuery.height * 0.05,
              child: ElevatedButton(
                onPressed: () {
                  if (_bookCount >= 15){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AddPickupDetails(),
                      ),
                    );
                } else {
                    showDialog( context: context,
                        builder: (BuildContext context){
                      return AlertDialog(
                        title: Row(
                          children: [
                            CircleAvatar(radius: 22,
                            child: Image.asset('assets/images/dumplogo.png'),),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text('Minimum selling books\ncount should be 15',
                              style: TextStyle(fontSize: 18),),
                            ),
                          ],
                        ),
                      );
                        });
                  }
                  },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                    backgroundColor: _bookCount >= 15 ? DumpColors.ambercolor: Colors.grey.shade300
                ),
                child: Text(
                  'SELL MY BOOK',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: _bookCount >= 15 ? DumpColors.appcolor : Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
