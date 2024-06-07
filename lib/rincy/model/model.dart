


class ProductModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  ProductModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}