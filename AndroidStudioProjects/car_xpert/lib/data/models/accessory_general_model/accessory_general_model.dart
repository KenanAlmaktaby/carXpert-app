import 'dart:convert';

AccessoryGeneralModel accessoryGeneralModelFromJson(String str) => AccessoryGeneralModel.fromJson(json.decode(str));

String accessoryGeneralModelToJson(AccessoryGeneralModel data) => json.encode(data.toJson());

class AccessoryGeneralModel {
  String message;
  List<AccessoryDatum> data;

  AccessoryGeneralModel({
    required this.message,
    required this.data,
  });

  factory AccessoryGeneralModel.fromJson(Map<String, dynamic> json) => AccessoryGeneralModel(
    message: json["message"],
    data: List<AccessoryDatum>.from(json["data"].map((x) => AccessoryDatum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class AccessoryDatum {
  int accessoryId;
  String name;
  String brand;
  int price;
  String images;

  AccessoryDatum({
    required this.accessoryId,
    required this.name,
    required this.brand,
    required this.price,
    required this.images,
  });

  factory AccessoryDatum.fromJson(Map<String, dynamic> json) => AccessoryDatum(
    accessoryId: json["accessory_id"],
    name: json["name"],
    brand: json["brand"],
    price: json["price"],
    images: json["images"],
  );

  Map<String, dynamic> toJson() => {
    "accessory_id": accessoryId,
    "name": name,
    "brand": brand,
    "price": price,
    "images": images,
  };
}

// class Images {
//   String the1;
//
//   Images({
//     required this.the1,
//   });
//
//   factory Images.fromJson(Map<String, dynamic> json) => Images(
//     the1: json["1"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "1": the1,
//   };
// }
