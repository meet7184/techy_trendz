class BannerModel {
  BannerModel({
    required this.success,
    required this.message,
    required this.list,
    this.code,
  });

  bool success;
  String message;
  List<BannerList> list;
  int? code;

  factory BannerModel.fromJson(Map<String, dynamic> json) => BannerModel(
        success: json["success"],
        message: json["message"],
        list: List<BannerList>.from(
            json["data"].map((x) => BannerList.fromJson(x))),
        code: json["code"],
      );
}

class BannerList {
  BannerList({
    required this.id,
    required this.title,
    required this.permalink,
    required this.image,
    required this.categoryText,
  });

  int id;
  String title;
  String permalink;
  String image;
  String categoryText;

  factory BannerList.fromJson(Map<String, dynamic> json) => BannerList(
        id: json["id"],
        title: json["title"],
        permalink: json["permalink"],
        image: json["image"],
        categoryText: json["categoryText"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "permalink": permalink,
        "image": image,
        "categoryText": categoryText,
      };
}
