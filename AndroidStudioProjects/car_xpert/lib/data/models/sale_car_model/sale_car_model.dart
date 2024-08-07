// To parse this JSON data, do
//
//     final saleCarModel = saleCarModelFromJson(jsonString);

import 'dart:convert';

SaleCarModel saleCarModelFromJson(String str) => SaleCarModel.fromJson(json.decode(str));

String saleCarModelToJson(SaleCarModel data) => json.encode(data.toJson());

class SaleCarModel {
  String status;
  CarData carData;
  List<String> images;

  SaleCarModel({
    required this.status,
    required this.carData,
    required this.images,
  });

  factory SaleCarModel.fromJson(Map<String, dynamic> json) => SaleCarModel(
    status: json["status"],
    carData: CarData.fromJson(json["car_data"]),
    images: List<String>.from(json["images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "car_data": carData.toJson(),
    "images": List<dynamic>.from(images.map((x) => x)),
  };
}

class CarData {
  int id;
  String images;
  String name;
  String model;
  int price;
  int depositAmount;
  int productionYear;
  String carTransmission;
  String propulsionType;
  String engineType;
  String engineSize;
  String fuelTankCapacity;
  String fuelType;
  dynamic additionalInformation;
  int numberOfCars;
  DateTime createdAt;
  DateTime updatedAt;
  String discount;

  CarData({
    required this.id,
    required this.images,
    required this.name,
    required this.model,
    required this.price,
    required this.depositAmount,
    required this.productionYear,
    required this.carTransmission,
    required this.propulsionType,
    required this.engineType,
    required this.engineSize,
    required this.fuelTankCapacity,
    required this.fuelType,
    required this.additionalInformation,
    required this.numberOfCars,
    required this.createdAt,
    required this.updatedAt,
    required this.discount,
  });

  factory CarData.fromJson(Map<String, dynamic> json) => CarData(
    id: json["id"],
    images: json["Images"],
    name: json["Name"],
    model: json["Model"],
    price: json["Price"],
    depositAmount: json["Deposit_Amount"],
    productionYear: json["Production_Year"],
    carTransmission: json["Car_Transmission"],
    propulsionType: json["Propulsion_Type"],
    engineType: json["Engine_Type"],
    engineSize: json["Engine_Size"],
    fuelTankCapacity: json["Fuel_Tank_Capacity"],
    fuelType: json["Fuel_Type"],
    additionalInformation: json["Additional_information"],
    numberOfCars: json["number_of_cars"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    discount: json["Discount"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Images": images,
    "Name": name,
    "Model": model,
    "Price": price,
    "Deposit_Amount": depositAmount,
    "Production_Year": productionYear,
    "Car_Transmission": carTransmission,
    "Propulsion_Type": propulsionType,
    "Engine_Type": engineType,
    "Engine_Size": engineSize,
    "Fuel_Tank_Capacity": fuelTankCapacity,
    "Fuel_Type": fuelType,
    "Additional_information": additionalInformation,
    "number_of_cars": numberOfCars,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "Discount": discount,
  };
}
