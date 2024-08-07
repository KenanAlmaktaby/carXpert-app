import 'dart:convert';

GeneralModel generalModelFromJson(String str) => GeneralModel.fromJson(json.decode(str));

String generalModelToJson(GeneralModel data) => json.encode(data.toJson());

class GeneralModel {
  String message;
  List<Datum> data;

  GeneralModel({
    required this.message,
    required this.data,
  });

  factory GeneralModel.fromJson(Map<String, dynamic> json) => GeneralModel(
    message: json["message"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "data": List<dynamic>.from(data.map((x) => x.toJson())),
  };
}

class Datum {
  int carId;
  String name;
  String model;
  int productionYear;
  int price;
  String images;

  Datum({
    required this.carId,
    required this.name,
    required this.model,
    required this.productionYear,
    required this.price,
    required this.images,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    carId: json["car_id"],
    name: json["name"],
    model: json["model"],
    productionYear: json["production_year"],
    price: json["price"],
    images: json["images"],
  );

  Map<String, dynamic> toJson() => {
    "car_id": carId,
    "name": name,
    "model": model,
    "production_year": productionYear,
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