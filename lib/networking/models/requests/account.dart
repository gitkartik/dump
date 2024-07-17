// To parse this JSON data, do
//
//     final accountRequest = accountRequestFromJson(jsonString);

import 'dart:convert';

AccountRequest accountRequestFromJson(String str) => AccountRequest.fromJson(json.decode(str));

String accountRequestToJson(AccountRequest data) => json.encode(data.toJson());

class AccountRequest {
  String? type;
  String? name;
  String? email;
  String? mobile;
  String? sellBookLink;
  String? dob;
  String? gender;
  String? docType;
  String? token;
  String? otp;

  AccountRequest({
    this.type,
    this.name,
    this.email,
    this.mobile,
    this.sellBookLink,
    this.dob,
    this.gender,
    this.docType,
    this.token,
    this.otp,
  });

  factory AccountRequest.fromJson(Map<String, dynamic> json) => AccountRequest(
    type: json["type"],
    name: json["name"],
    email: json["email"],
    mobile: json["mobile"],
    sellBookLink: json["sell_book_link"],
    dob: json["dob"],
    gender: json["gender"],
    docType: json["doc_type"],
    token: json["token"],
    otp: json["otp"],
  );

  Map<String, dynamic> toJson() => {
    "type": type,
    "name": name,
    "email": email,
    "mobile": mobile,
    "sell_book_link": sellBookLink,
    "dob": dob,
    "gender": gender,
    "doc_type": docType,
    "token": token,
    "otp": otp,
  };
}
