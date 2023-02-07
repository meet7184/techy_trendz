class TopRatedProductsModel {
  TopRatedProductsModel({
    required this.success,
    required this.message,
    required this.data,
    required this.code,
  });

  bool success;
  String message;
  List<TopRatedProductsList> data;
  int code;

  factory TopRatedProductsModel.fromJson(Map<String, dynamic> json) =>
      TopRatedProductsModel(
        success: json["success"],
        message: json["message"],
        data: List<TopRatedProductsList>.from(
            json["data"].map((x) => TopRatedProductsList.fromJson(x))),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "code": code,
      };
}

class TopRatedProductsList {
  TopRatedProductsList({
    required this.id,
    required this.title,
    required this.price,
    required this.permalink,
    required this.image,
    required this.rating,
  });

  int id;
  String title;
  String price;
  String permalink;
  dynamic image;
  String rating;

  factory TopRatedProductsList.fromJson(Map<String, dynamic> json) =>
      TopRatedProductsList(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        permalink: json["permalink"],
        image: json["image"],
        rating: json["rating"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "permalink": permalink,
        "image": image,
        "rating": rating,
      };
}
