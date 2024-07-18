import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Profile'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.blue,
                      child: Text(
                        'A',
                        style: TextStyle(
                          color: DumpColors.textcolor,
                          fontSize: 45,
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: _mediaQuery.width * 0.07,
                        height: _mediaQuery.height * 0.06,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.photo_camera_outlined,
                            size: 18,
                            color: DumpColors.appcolor,
                          ),
                        ),
                      ),
                    ),
                  ]),
                ],
              ),
              SizedBox(height: _mediaQuery.height * 0.03),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    "Name",
                    style: TextStyle(
                      fontSize: 12,
                      color: DumpColors.unselectedicncolor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    "Mobile Number",
                    style: TextStyle(
                      fontSize: 12,
                      color: DumpColors.unselectedicncolor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    "Email",
                    style: TextStyle(
                      fontSize: 12,
                      color: DumpColors.unselectedicncolor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: 12,
                      color: DumpColors.unselectedicncolor,
                    ),
                  ),
                  suffixIcon: PopupMenuButton<String>(
                    onSelected: (value) {},
                    icon: Icon(
                      DumpIcons.icndropdownarrow,
                      color: DumpColors.selecteicndcolor,
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        PopupMenuItem<String>(
                          child: Text('Female'),
                        ),
                        PopupMenuItem<String>(
                          child: Text('Male'),
                         ),
                        PopupMenuItem<String>(
                          child: Text('Rather not say'),
                        ),
                      ];
                    },
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              TextField(
                decoration: InputDecoration(
                  label: Text(
                    "D.O.B",
                    style: TextStyle(
                      fontSize: 12,
                      color: DumpColors.unselectedicncolor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              InkWell(
                onTap: () => _onTap(0),
                child: Container(
                  height: _mediaQuery.height * 0.06,
                  width: double.infinity,
                  color: _selectedIndex == 0
                      ? DumpColors.ambercolor
                      : Colors.grey.shade300,
                  child: Center(
                    child: Text(
                      'UPDATE',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              InkWell(
                onTap: () => _onTap(1),
                child: Container(
                  height: _mediaQuery.height * 0.06,
                  width: double.infinity,
                  color: _selectedIndex == 1
                      ? DumpColors.ambercolor
                      : Colors.grey.shade300,
                  child: Center(
                    child: Text(
                      'LOGOUT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              InkWell(
                onTap: () => _onTap(2),
                child: Container(
                  height: _mediaQuery.height * 0.06,
                  width: double.infinity,
                  color: _selectedIndex == 2
                      ? DumpColors.ambercolor
                      : Colors.grey.shade300,
                  child: Center(
                    child: Text(
                      'DEACTIVATE ACCOUNT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
              InkWell(
                onTap: () => _onTap(3),
                child: Container(
                  height: _mediaQuery.height * 0.06,
                  width: double.infinity,
                  color: _selectedIndex == 3
                      ? DumpColors.ambercolor
                      : Colors.grey.shade300,
                  child: Center(
                    child: Text(
                      'DELETE ACCOUNT',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
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
