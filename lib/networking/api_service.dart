import 'dart:convert';

import 'package:dump_app/networking/models/globalModel.dart';
import 'package:dump_app/networking/models/responses/account.dart';
import 'package:dump_app/networking/models/responses/home.dart';
import 'package:http/http.dart' as http;

class ApiService {
  String baseUrl = "https://apis-stg.bookchor.com/webservices/bookchor.com/dump/user_profile.php";
  String baseUrl1 = "https://apis-stg.bookchor.com/webservices/bookchor.com/dump/sell_home.php";


  Future<http.Response> postRequest(String url, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    final response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    return response;
  }

  Future<http.Response> postRequest1(String url, Map<String, dynamic> body,
      {Map<String, String>? headers}) async {
    final response = await http.post(
      Uri.parse(url),
      body: body,
      headers: headers,
    );
    return response;
  }


  Future<dynamic> getUsers(dynamic data) async {
    // print("karrrrr");
    String decodeResponse;
    // var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
    var response = await http.post(
      Uri.parse(baseUrl), body: data, headers: <String, String>{
      "Authorization": "47a47a55a48a50a48a54a100",
    },


    );
    if (response.statusCode == 200) {
      // print(kartik);
      decodeResponse = utf8.decode(response.bodyBytes);
      Map<String, dynamic> result = jsonDecode(decodeResponse);
      if (response.bodyBytes.isNotEmpty) {
        AccountResponse accountResponse = AccountResponse.fromJson(result);
        accountResponseModel = accountResponse;
        print(accountResponseModel);
        print(accountResponseModel.email);
        print(accountResponseModel.mobile);
        print(accountResponseModel.name);
        print(accountResponseModel.dob);
      }
    }
  }
    Future<dynamic> getUsers1() async {
        //print("ddvg");
      String decodeResponse;
      // var url = Uri.parse(ApiConstants.baseUrl + ApiConstants.usersEndpoint);
      var response = await http.post(
        Uri.parse(baseUrl1), headers: <String, String>{
        // 'Content-Type': 'application/json; charset=UTF-8',
        "Authorization": "47a47a55a48a50a48a54a100",
      },
      );


      if (response.statusCode == 200) {
        print("Abniav");
        decodeResponse = utf8.decode(response.bodyBytes);
        Map<String, dynamic> result = jsonDecode(decodeResponse);
        if (response.bodyBytes.isNotEmpty) {
          Homeresponse homeresponse = Homeresponse.fromJson(result);
          homeresponseModel = homeresponse;
          print(homeresponse.toJson());

        }
      }
    }
  }

