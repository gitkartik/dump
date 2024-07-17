
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dump_app/core/utitlity.dart';
import 'package:dump_app/networking/models/globalModel.dart';
import 'package:dump_app/networking/models/responses/home.dart';
import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'networking/api_service.dart';

class HomePage extends StatefulWidget {
 HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with GlobalEncryption {
Homeresponse? homeresponse1;




   List<HomeBanner> imgPath = [];
  List<HomeContent> homeContent = [];

final _apiService = ApiService();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   // _apiService.getUsers1();
    _apiService.getUsers1().then((value) {
      // homeresponse1 = data; // Set the data after successful API call
      setState(() {
        homeresponse1 = homeresponseModel;
        imgPath = homeresponse1!.homeBanner!;
        homeContent = homeresponse1!.homeContent!;

        print(homeresponse1!.toJson());
      }); // Update UI if necessary (optional)
    }).catchError((error) {
      // Handle API call error
      print("Error fetching data: $error");
    });
  }







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
                      child: Image.network(path.url!, fit: BoxFit.cover),
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
                  itemCount: homeContent.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white, // Set the card color to white
                      child: ListTile(
                        leading: CircleAvatar(
                            radius: 25,
                            backgroundColor: DumpColors.ambercolor,
                            child: Image.network(homeContent[index].image!)
                        ),
                        title: Text(homeContent[index].title!, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),),
                        subtitle: Text(homeContent[index].desc!, style: TextStyle(fontSize: 12),),
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



