import 'dart:convert';

CarColorModel carColorModelFromJson(String str) => CarColorModel.fromJson(json.decode(str));

String carColorModelToJson(CarColorModel data) => json.encode(data.toJson());

class CarColorModel {
  String message;
  List<ColorCarQuantity> colors;

  CarColorModel({
    required this.message,
    required this.colors,
  });

  factory CarColorModel.fromJson(Map<String, dynamic> json) => CarColorModel(
    message: json["message"],
    colors: List<ColorCarQuantity>.from(json["colors"].map((x) => ColorCarQuantity.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "message": message,
    "colors": List<dynamic>.from(colors.map((x) => x.toJson())),
  };
}

class ColorCarQuantity {
  int id;
  String name;
  int quantity;

  ColorCarQuantity({
    required this.id,
    required this.name,
    required this.quantity,
  });

  factory ColorCarQuantity.fromJson(Map<String, dynamic> json) => ColorCarQuantity(
    id: json["id"],
    name: json["name"],
    quantity: json["quantity"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "quantity": quantity,
  };
}
