
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  List<String> arrNames = ['Whatsapp', 'In-App', 'Email'];
  Map<String, bool> switchValues = {
    'Whatsapp': false,
    'In-App': false,
    'Email': false,
  };

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Settings'),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Notification Preferences', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: _mediaQuery.height * 0.02),
            ...arrNames.map((name) {
              return Row(
                children: [
                  Text(name),
                  Spacer(),
                  Switch(
                    value: switchValues[name]!,
                    onChanged: (bool value) {
                      setState(() {
                        switchValues[name] = value;
                      });
                    },
                  ),
                ],
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
