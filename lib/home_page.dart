import 'package:carousel_slider/carousel_slider.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<String> imgPath = [
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
  ];

  final List<String> arrTitle = [
    'Scan it',
    'Add Address',
    'Select Payment Mode',
    'Pack & Ship',
    'Get Paid'
  ];

  final List<String> arrText = [
    'Scan the ISBN bar code or Enter the ISBN of the book',
    'Enter pickup address & suitable pickup time slot',
    'Either Bookchor Pay or via UPI',
    'Secure Books & handover parcel to pick up team',
    'Via selected mode Bookchor Pay & UPI'
  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBarwithLogo2(context, 'Dump'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: _mediaQuery.height * 0.3,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayInterval: Duration(seconds: 3),
                viewportFraction: 1,
              ),
              items: imgPath.map((path) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Image.asset(path, fit: BoxFit.cover),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: _mediaQuery.height * 0.02),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                'How It Works?',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: arrTitle.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color:DumpColors.textcolor,
                      child: ListTile(
                        leading: CircleAvatar(
                          radius: 25,
                          backgroundColor: DumpColors.ambercolor,
                          child: Image.asset('assets/images/dumplogo.png',),
                        ),
                        title: Text(arrTitle[index], style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        subtitle: Text(arrText[index], style: TextStyle(fontSize: 12),),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
