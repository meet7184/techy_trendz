class ProductsDetailListModel {
  ProductsDetailListModel({
    required this.success,
    required this.message,
    required this.data,
    required this.code,
  });

  bool success;
  String message;
  List<ProductList> data;
  int code;

  factory ProductsDetailListModel.fromJson(Map<String, dynamic> json) =>
      ProductsDetailListModel(
        success: json["success"],
        message: json["message"],
        data: List<ProductList>.from(
            json["data"].map((x) => ProductList.fromJson(x))),
        code: json["code"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "code": code,
      };
}

class ProductList {
  ProductList({
    required this.id,
    required this.title,
    required this.price,
    required this.permalink,
    this.image,
  });

  int id;
  String title;
  String price;
  String permalink;
  String? image;

  factory ProductList.fromJson(Map<String, dynamic> json) => ProductList(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        permalink: json["permalink"],
        image: json["image"] ?? "",
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "permalink": permalink,
        "image": image,
      };
}
