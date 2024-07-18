import 'package:dump/resources/colors/dump_colors.dart';
import 'package:dump/resources/icons/dump_icons.dart';
import 'package:dump/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class WeightPage extends StatelessWidget {
  const WeightPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: setDumpAppBar(context, 'Weight'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Estimated weight of your books',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: _mediaQuery.height * 0.01),
            Text(
              'Estimated weight is calculated on the basis of number of total books in selling list',
              style: TextStyle(color: Colors.grey[600]),
            ),
            SizedBox(height: _mediaQuery.height * 0.02),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Estimated weight',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: DumpColors.unselectedicncolor),
                ),
                Text(
                  'GRAM',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
            SizedBox(height: _mediaQuery.height * 0.01),
            TextField(
              readOnly: true,
              decoration: InputDecoration(
                hintText: '4800',
                hintStyle: TextStyle(color: Colors.black),
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: _mediaQuery.height * 0.02),
            Text(
              'HOW TO CALCULATE ESTIMATED WEIGHT ?',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 14, color: Colors.blue),
            ),
            SizedBox(height: _mediaQuery.height * 0.01),
            Row(
              children: [
                Icon(Icons.circle, size: 12, color: DumpColors.unselectedicncolor),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'The System will automatically calculate the total weight.',
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ],
            ),
            SizedBox(height: _mediaQuery.height * 0.01),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(DumpIcons.icnvideo,
                        color: DumpColors.greenaccentcolor, size: 45),
                    title: Text(
                      'Upload Video',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(
                      'Please upload a video of your books',
                      style: TextStyle(color: DumpColors.unselectedicncolor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child:Container(
                      height: _mediaQuery.height * 0.05,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: DumpColors.redcolor),
                      ),
                      child: TextButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Select Action'),
                                content: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text('Select video from gallery'),
                                      onTap: () async {
                                        Navigator.pop(context); // Close the dialog
                                        final XFile? pickedFile = await ImagePicker().pickVideo(source: ImageSource.gallery);
                                        if (pickedFile != null) {

                                          print('Selected video path: ${pickedFile.path}');

                                        }
                                      },
                                    ),
                                    ListTile(
                                      title: Text('Record video from camera'),
                                      onTap: () {
                                        Navigator.pop(context); // Close the dialog
                                      },
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Text(
                          'Upload Video',
                          style: TextStyle(color: DumpColors.redcolor),
                        ),
                      ),

                    ),

                  ),
                ],
              ),
            ),
            SizedBox(height: _mediaQuery.height * 0.02),
            Spacer(),
            SizedBox(
              width: double.infinity,
              height: _mediaQuery.height * 0.05,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
                  backgroundColor: Colors.amber,
                ),
                child: Text(
                  'CONTINUE',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: DumpColors.appcolor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
