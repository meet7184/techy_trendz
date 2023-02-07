class WishListModel {
  WishListModel({
    required this.success,
    required this.message,
    required this.data,
    required this.code,
  });

  bool success;
  String message;
  List<WishListDataModel> data;
  int code;

  factory WishListModel.fromJson(Map<String, dynamic> json) => WishListModel(
        success: json["success"],
        message: json["message"],
        data: List<WishListDataModel>.from(
            json["data"].map((x) => WishListDataModel.fromJson(x))),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "code": code,
      };
}

class WishListDataModel {
  WishListDataModel({
    required this.id,
    required this.title,
    required this.price,
    required this.permalink,
    required this.image,
  });

  int id;
  String title;
  String price;
  String permalink;
  String image;

  factory WishListDataModel.fromJson(Map<String, dynamic> json) =>
      WishListDataModel(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        permalink: json["permalink"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "permalink": permalink,
        "image": image,
      };
}
