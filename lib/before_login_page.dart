import 'package:dump/features/home_feature/bottom_navbar.dart';
import 'package:dump/home_page.dart';
import 'package:dump/login_page.dart';
import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/verifynum_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class BeforeLoginPage extends StatelessWidget {
  final List<String> imgPath = [
    'assets/images/Picture3.png',
    'assets/images/Picture4.png',
    'assets/images/Picture5.png',
  ];

  final List<String> arrTitle = [
    'Get Paid in UPI/Bookchor pay',
    'Hassel-free Home pickup',
    'Sell your books in just 3 seconds',

  ];

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: DumpColors.selecteicndcolor,
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Center(
            child: Image.asset(
              'assets/images/dumplogo.png',
              height: _mediaQuery.height * 0.2,
              width: _mediaQuery.width * 0.2,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Skip',
                style: TextStyle(color: DumpColors.textcolor),
              ),
            ),
          )
        ],
      ),
      backgroundColor: DumpColors.selecteicndcolor,
      body: Column(
        children: [
          Spacer(),
          Container(
            height: _mediaQuery.height * 0.7,
            decoration: BoxDecoration(
              color: DumpColors.textcolor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    height: _mediaQuery.height * 0.5,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayInterval: Duration(seconds:2),
                    viewportFraction: 1,
                  ),
                  items: imgPath.map((path) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: _mediaQuery.height * 0.08,
                              backgroundColor: Colors.white,
                              child: ClipOval(
                                child: Image.asset(
                                  path,
                                  fit: BoxFit.cover,
                                  width: _mediaQuery.height * 0.3,
                                  height: _mediaQuery.height * 0.3,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              arrTitle[imgPath.indexOf(path)],
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        );
                      },
                    );
                  }).toList(),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row( mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
                },
                        child: CircleAvatar(radius: 25,
                        backgroundColor: DumpColors.ambercolor,
                        child: Icon(DumpIcons.icnforwardarrow,)
                                            ,
                      ))],
                  ),
                )

              ],
            ),
          ),
        ],
      ),
    );
  }
}

