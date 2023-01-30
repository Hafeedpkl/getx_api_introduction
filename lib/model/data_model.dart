class DataModel {
  //1,create  variables
  int? id;
  String? title;
  String? description;
  String? category;
  double? price;
  String? image;
  // 2nd, create constrtor
  DataModel(
      {this.category,
      this.description,
      this.image,
      this.id,
      this.price,
      this.title});

  //3rd create fromjson
  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
        price: json["price"]);
  }
  //4th create Tojson
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "title": title,
      "price": price,
      "image": image,
      "description": description,
      "category": category
    };
  }
}
