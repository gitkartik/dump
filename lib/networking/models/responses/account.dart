// To parse this JSON data, do
//
//     final accountResponse = accountResponseFromJson(jsonString);

import 'dart:convert';

AccountResponse accountResponseFromJson(String str) => AccountResponse.fromJson(json.decode(str));

String accountResponseToJson(AccountResponse data) => json.encode(data.toJson());

class AccountResponse {
  String? name;
  String? email;
  dynamic gender;
  String? dob;
  String? mobile;
  String? image;
  String? bcLink;
  String? showBcLink;
  String? helpNum;
  String? deactivation;
  String? contactNum;
  String? contactEmail;

  AccountResponse({
    this.name,
    this.email,
    this.gender,
    this.dob,
    this.mobile,
    this.image,
    this.bcLink,
    this.showBcLink,
    this.helpNum,
    this.deactivation,
    this.contactNum,
    this.contactEmail,
  });

  factory AccountResponse.fromJson(Map<String, dynamic> json) => AccountResponse(
    name: json["name"],
    email: json["email"],
    gender: json["gender"],
    dob: json["dob"],
    mobile: json["mobile"],
    image: json["image"],
    bcLink: json["bc_link"],
    showBcLink: json["show_bc_link"],
    helpNum: json["help_num"],
    deactivation: json["deactivation"],
    contactNum: json["contact_num"],
    contactEmail: json["contact_email"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "email": email,
    "gender": gender,
    "dob": dob,
    "mobile": mobile,
    "image": image,
    "bc_link": bcLink,
    "show_bc_link": showBcLink,
    "help_num": helpNum,
    "deactivation": deactivation,
    "contact_num": contactNum,
    "contact_email": contactEmail,
  };
}
