

// To parse this JSON data, do
//
//     final homeresponse = homeresponseFromJson(jsonString);

import 'dart:convert';

Homeresponse homeresponseFromJson(String str) => Homeresponse.fromJson(json.decode(str));

String homeresponseToJson(Homeresponse data) => json.encode(data.toJson());

class Homeresponse {
  List<HomeContent>? homeContent;
  List<HomeContent>? intro;
  int? introOrient;
  List<HomeBanner>? homeBanner;
  String? googleAds;

  Homeresponse({
    this.homeContent,
    this.intro,
    this.introOrient,
    this.homeBanner,
    this.googleAds,
  });

  factory Homeresponse.fromJson(Map<String, dynamic> json) => Homeresponse(
    homeContent: json["home_content"] == null ? [] : List<HomeContent>.from(json["home_content"]!.map((x) => HomeContent.fromJson(x))),
    intro: json["intro"] == null ? [] : List<HomeContent>.from(json["intro"]!.map((x) => HomeContent.fromJson(x))),
    introOrient: json["intro_orient"],
    homeBanner: json["home_banner"] == null ? [] : List<HomeBanner>.from(json["home_banner"]!.map((x) => HomeBanner.fromJson(x))),
    googleAds: json["google_ads"],
  );

  Map<String, dynamic> toJson() => {
    "home_content": homeContent == null ? [] : List<dynamic>.from(homeContent!.map((x) => x.toJson())),
    "intro": intro == null ? [] : List<dynamic>.from(intro!.map((x) => x.toJson())),
    "intro_orient": introOrient,
    "home_banner": homeBanner == null ? [] : List<dynamic>.from(homeBanner!.map((x) => x.toJson())),
    "google_ads": googleAds,
  };
}

class HomeBanner {
  String? url;
  String? click;
  String? clickId;
  String? clickValue;

  HomeBanner({
    this.url,
    this.click,
    this.clickId,
    this.clickValue,
  });

  factory HomeBanner.fromJson(Map<String, dynamic> json) => HomeBanner(
    url: json["url"],
    click: json["click"],
    clickId: json["click_id"],
    clickValue: json["click_value"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "click": click,
    "click_id": clickId,
    "click_value": clickValue,
  };
}

class HomeContent {
  String? image;
  String? desc;
  String? title;

  HomeContent({
    this.image,
    this.desc,
    this.title,
  });

  factory HomeContent.fromJson(Map<String, dynamic> json) => HomeContent(
    image: json["image"],
    desc: json["desc"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "image": image,
    "desc": desc,
    "title": title,
  };
}

