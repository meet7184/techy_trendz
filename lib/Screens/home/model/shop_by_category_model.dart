class ShopByCategoryModel {
  ShopByCategoryModel({
    required this.success,
    required this.message,
    required this.data,
    required this.code,
  });

  bool success;
  String message;
  List<ShopByCategoryList> data;
  int code;

  factory ShopByCategoryModel.fromJson(Map<String, dynamic> json) =>
      ShopByCategoryModel(
        success: json["success"],
        message: json["message"],
        data: List<ShopByCategoryList>.from(
            json["data"].map((x) => ShopByCategoryList.fromJson(x))),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "code": code,
      };
}

class ShopByCategoryList {
  ShopByCategoryList({
    required this.id,
    required this.title,
    required this.permalink,
    required this.image,
  });

  int id;
  String title;
  String permalink;
  String image;

  factory ShopByCategoryList.fromJson(Map<String, dynamic> json) =>
      ShopByCategoryList(
        id: json["id"],
        title: json["title"],
        permalink: json["permalink"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "permalink": permalink,
        "image": image,
      };
}
