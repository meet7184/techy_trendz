class RecommendedProductsModel {
  RecommendedProductsModel({
    required this.success,
    required this.message,
    required this.data,
    required this.code,
  });

  bool success;
  String message;
  List<RecommendedList> data;
  int code;

  factory RecommendedProductsModel.fromJson(Map<String, dynamic> json) =>
      RecommendedProductsModel(
        success: json["success"],
        message: json["message"],
        data: List<RecommendedList>.from(
            json["data"].map((x) => RecommendedList.fromJson(x))),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "code": code,
      };
}

class RecommendedList {
  RecommendedList({
    required this.id,
    required this.title,
    required this.price,
    required this.permalink,
    required this.image,
    required this.rating,
    //required this.isFavourite,
  });

  int id;
  String title;
  String price;
  String permalink;
  String image;
  String rating;
  //bool isFavourite;

  factory RecommendedList.fromJson(Map<String, dynamic> json) =>
      RecommendedList(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        permalink: json["permalink"],
        image: json["image"],
        rating: json["rating"],
        //isFavourite: json["isFavourite"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "permalink": permalink,
        "image": image,
        "rating": rating,
        //"isFavourite": isFavourite,
      };
}
