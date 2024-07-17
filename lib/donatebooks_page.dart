
import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';

class DonateBooksPage extends StatelessWidget {
  final List<String> arrHintNames = ['Estimated number of books', 'Pincode', 'Your Address'];

  DonateBooksPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Donate Books'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: arrHintNames.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: arrHintNames[index],
                        labelStyle: TextStyle(
                          color: DumpColors.unselectedicncolor,
                        ),
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              Text(
                'Terms and Conditions',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              Text(
                "1. Donated books will not be returned or encashed.\n"
                    "2. All the courier and package expenses for donated books will be borne by the donor.\n"
                    "3. Minimum 10 books are required if Bookchor Pickup is needed.",
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              InkWell(
                onTap: () {},
                child: Container(
                  height: _mediaQuery.height * 0.05,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: DumpColors.ambercolor,
                  ),
                  child: Center(
                    child: Text(
                      "SUBMIT",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: DumpColors.selecteicndcolor,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}