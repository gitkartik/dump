
import 'package:dump_app/core/utitlity.dart';
import 'package:dump_app/networking/api_service.dart';
import 'package:dump_app/resources/colors/dump_colors.dart';
import 'package:dump_app/resources/icons/dump_icons.dart';
import 'package:dump_app/resources/widgets/global_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';
class ProfilePage extends StatefulWidget {
  @override
  State<ProfilePage> createState() => _ProfilePageState();


  // Future<void> _selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: selectedDate,
  //       firstDate: DateTime(2015, 8),
  //       lastDate: DateTime(2024));
  //   if (picked != null && picked != selectedDate) {
  //     setState(() {
  //       selectedDate = picked;
  //     });
  //   }
  // }

  // DateTime _date = new DateTime.now();
  // TimeOfDay _time = new TimeOfDay.now();
  //
  // Future<Null> _selectedDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //       context: context,
  //       initialDate: _date,
  //       firstDate: new DateTime(2016),
  //       lastDate: new DateTime(2019));
  //
  //   if (picked != null && picked != _date) {
  //     print("Date selected ${_date.toString()}");
  //     setState(() {
  //       _date = picked;
  //     });
  //   }
  // }





}

class _ProfilePageState extends State<ProfilePage>  with GlobalEncryption {
  int _selectedIndex = 0;
  final _apiService = ApiService();
  DateTime selectedDate = DateTime.now();
  String? str;

  TextEditingController intialdateval = TextEditingController(text: "DOB");


  void _selectDate() async {
    final selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (selectedDate != null) {
      intialdateval.text = selectedDate.toString();
    }
  }


  // TextEditingController _dateController = TextEditingController();
  //
  // void _showDatePicker(BuildContext context) async {
  //   final selectedDate = await showDatePicker(
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(2010),
  //     lastDate: DateTime(2025),
  //   );
  //
  //   if (selectedDate != null) {
  //     _dateController.text = selectedDate.toString();
  //   }
  // }

  TextEditingController mobile = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController dob = TextEditingController();
  bool isEmailValid = false;

  void Validate(String email) {
    bool isvalid = EmailValidator.validate(email);
    print(isvalid);
  }

  final _formKey = GlobalKey<FormState>();
  var data;
late DateTime dateTime;

  void _onTap(int index) {
    //profiledata(mobile.text.toString(),name.text.toString(),email.text.toString(),gender.text.toString(),dob.text.toString());
    setState(() {
      _selectedIndex = index;
    });
    if (_selectedIndex == 0) {
      var data = {
        "token": encrypt("47a47a55a48a50a48a54a100"),
        "dob": encrypt(dob.text),
        "type": encrypt("A"),
        "name": encrypt(name.text),
        "email": encrypt(email.text),
        "mobile": encrypt(mobile.text),
        "gender": encrypt(gender.text),

      };
      _apiService.getUsers(data);
      print(encrypt(name.text));
    }

  }


  @override
  Widget build(BuildContext context) {
    String? validateEmail(String? value) {
      const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
          r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
          r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
          r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
          r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
          r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
          r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
      final regex = RegExp(pattern);

      return value!.isNotEmpty && !regex.hasMatch(value)
          ? 'Enter a valid email address'
          : null;
    }

    var _mediaQuery = MediaQuery
        .of(context)
        .size;
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
                    const CircleAvatar(
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
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
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
              TextFormField(
                //controller: name,
                decoration: const InputDecoration(
                  //  border: OutlineInputBorder(),
                    hintText: "Enter Your name"
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name text';
                  }
                  return null;
                },
              ),
              // )
              //   controller: name,
              //   decoration: InputDecoration(
              //     label: Text(
              //       "Name",
              //       style: TextStyle(
              //         fontSize: 12,
              //         color: DumpColors.unselectedicncolor,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: _mediaQuery.height * 0.02),
              TextFormField(
                controller: name,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10)
                ],
                decoration: const InputDecoration(
                  // border: OutlineInputBorder(),
                    hintText: "Enter Your number"
                ),
                // The validator receives the text that the user has entered.
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter valid your mobile no';
                  } else if (value.length < 10)
                    return null;
                },
                keyboardType: TextInputType.phone,
              ),
              // TextField(
              //   controller: mobile,
              //   decoration: InputDecoration(
              //     label: Text(
              //       "Mobile Number",
              //       style: TextStyle(
              //         fontSize: 12,
              //         color: DumpColors.unselectedicncolor,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: _mediaQuery.height * 0.02),
              // TextFormField(
              //   autovalidateMode:AutovalidateMode.always,
              //   validator: (input) => input!.isValidEmail(EmailValidator()) ? null : "Check your email",
              // ),

              TextFormField(
                decoration: InputDecoration(labelText: 'Email Address'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter an email address';
                  } else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                      .hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null; // Return null if the input is valid
                },
              ),

              //  TextFormField(
              ///    autovalidateMode: AutovalidateMode.always
              //   validator: validateEmail,
              //     ),
              //    autovalidateMode: true,
              //    validator: (input) => input?.isValidEmail() ? null : "Check your email",
              // ),
              // TextField(
              //
              //   decoration: const InputDecoration(
              //     label: Text(
              //       "Email",
              //       style: TextStyle(
              //         fontSize: 12,
              //         color: DumpColors.unselectedicncolor,
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: _mediaQuery.height * 0.02),
              TextField(
                controller: gender,
                decoration: InputDecoration(
                  label: const Text(
                    'Gender',
                    style: TextStyle(
                      fontSize: 12,
                      color: DumpColors.unselectedicncolor,
                    ),
                  ),
                  suffixIcon: PopupMenuButton<String>(
                    onSelected: (value) {},
                    icon: const Icon(
                      DumpIcons.icndropdownarrow,
                      color: DumpColors.selecteicndcolor,
                    ),
                    itemBuilder: (BuildContext context) {
                      return [
                        const PopupMenuItem<String>(
                          child: Text('Female'),
                        ),
                        const PopupMenuItem<String>(
                          child: Text('Male'),
                        ),
                        const PopupMenuItem<String>(
                          child: Text('Rather not say'),
                        ),
                      ];
                    },
                  ),
                ),
              ),
              SizedBox(height: _mediaQuery.height * 0.02),
            //  SizedBox(height: 100,
             //   child: CupertinoDatePicker(mode: CupertinoDatePickerMode.date,
                 //  onDateTimeChanged: (value) {
                     // setState(() {
                     //   dateTime = value;
                     //    str = dateTime.toString();
                   //   });
                  //  }
                  // onDateTimeChanged: (DateTime value) {
                  // value = DateTime.now();
                  // },),
              //  ),
           //   ),

              TextFormField(
                // focusNode: _focusNode,
                keyboardType: TextInputType.phone,
                autocorrect: false,
                controller: intialdateval,

                onSaved: (value) {
                //  data.registrationdate = value;
                },
                onTap: () {
                  _selectDate();
                  FocusScope.of(context).requestFocus( FocusNode());
                },
                maxLines: 1,
                //initialValue: 'Aseem Wangoo',
                validator: (value) {
                  if (value!.isEmpty || value.length < 1) {
                    return 'Choose Date';
                  }
                },
                decoration: InputDecoration(

                  //filled: true,
                  icon: const Icon(Icons.calendar_today),
                  labelStyle:
                  TextStyle(decorationStyle: TextDecorationStyle.solid),
                ),
              ),
      //
      //     InkWell(
      //       onTap: () {
      //         _selectDate();   // Call Function that has showDatePicker()
      //       },
      //       child: new TextFormField(
      //         decoration: new InputDecoration(hintText: 'DOB'),
      //         maxLength: 10,
      //         validator: validateDob,
              // onSaved: (String val) {},
            // ),
          // ),
      // TextFormField(
      // readOnly: true, // Prevent keyboard from showing on tap
      // decoration: InputDecoration(hintText: 'D.O.B',
      //
      //   labelText: str,
      //  icon: IconButton(
      //   icon: Icon(Icons.calendar_today),
      //     onPressed: () {
      //       CupertinoDatePicker(mode: CupertinoDatePickerMode.date,
      //           onDateTimeChanged: (value) {
      //
      //             setState(() {
      //               dateTime = value;
               //     str = dateTime.toString();
               //   });
             //   }
              // onDateTimeChanged: (DateTime value) {
              // value = DateTime.now();
              // },),
          //  );
        //  },
      //  ),
   //   ),
  //  ),

    GestureDetector(
    child: Container(), // Replace with your actual widget

    ),



    // TextField(
              //      controller: dob,
              //      decoration: const InputDecoration(
              //        label: Text(
              //          "D.O.B",
              //          style: TextStyle(
              //            fontSize: 12,
              //            color: DumpColors.unselectedicncolor,
              //          ),
              //        ),
              //      ),
              //    ),
              SizedBox(height: _mediaQuery.height * 0.02),
              GestureDetector(onTap: () => _onTap(0),

                //     (){
                //   data = {
                //     "token":"47a47a55a48a50a48a54a100" ,"dob":"17-03-1999" ,"type":"A" ,"name":"Kumar" ,"email":"kartikchaudhary595@gmail.com" ,"mobile":"8938848487" ,"sellBookLink":"hhhhjjh" ,"gender":"Male" ,"docType":"" ,"otp":"2222"
                //
                //   };
                //   _apiService.getUsers(data);
                // },

                child: Container(
                  height: _mediaQuery.height * 0.06,
                  width: double.infinity,
                  color: _selectedIndex == 0
                      ? DumpColors.ambercolor
                      : Colors.grey.shade300,
                  child: const Center(
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
                  child: const Center(
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
                  child: const Center(
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
                  child: const Center(
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





