import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/texts/texts.dart';
import 'package:flutter/material.dart';

import '../../account_page.dart';
import '../../home_page.dart';
import '../../pickup_page.dart';
import '../../sell_book_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final PageStorageBucket bucket = PageStorageBucket();
  final List<Widget> pages = [
    Center(
      child: HomePage(),
    ),
    Center(
      child: SellBooksPage(),
    ),
    const Center(
      child: PickupPage(),
    ),
    Center(
      child: AccountPage(),
    ),
  ];

  int _selectedIndex = 0;

  final List<IconData> bottomnavbaricons = [
    DumpIcons.icnhome,
    DumpIcons.icnsellbooks,
    DumpIcons.icnpickup,
    DumpIcons.icnaccount,
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      body: PageStorage(
        bucket: bucket,
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: SizedBox(
        height: MediaQuery.of(context).size.width / 6,
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: DumpColors.appcolor,
          unselectedItemColor: DumpColors.unselectedicncolor,
          items: [
            for (int i = 0; i < bottomnavbaricons.length; i++)
              BottomNavigationBarItem(
                icon: Icon(bottomnavbaricons[i], ),
                label: _getLabel(i),
              ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return Dumptexts.bottomnavhometext;
      case 1:
        return Dumptexts.bottomnavsellbooktext;
      case 2:
        return Dumptexts.bottomnavpickuptext;
      case 3:
        return Dumptexts.bottomnavaccounttext;
      default:
        return "";
    }
  }
}
