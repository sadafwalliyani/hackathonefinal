class UserModel {
  List<Data>? data;

  UserModel({this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? createdAt;
  Null? updatedAt;
  String? title;
  String? price;
  String? rating;
  String? description;
  String? createdBy;
  String? video;
  String? categories;

  Data(
      {this.id,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.price,
      this.rating,
      this.description,
      this.createdBy,
      this.video,
      this.categories});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    title = json['title'];
    price = json['price'];
    rating = json['rating'];
    description = json['description'];
    createdBy = json['created_by'];
    video = json['video'];
    categories = json['categories'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['title'] = this.title;
    data['price'] = this.price;
    data['rating'] = this.rating;
    data['description'] = this.description;
    data['created_by'] = this.createdBy;
    data['video'] = this.video;
    data['categories'] = this.categories;
    return data;
  }
}