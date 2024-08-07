import 'dart:convert';

RentCarModel rentCarModelFromJson(String str) => RentCarModel.fromJson(json.decode(str));

String rentCarModelToJson(RentCarModel data) => json.encode(data.toJson());

class RentCarModel {
  String status;
  RentCarData carData;
  List<String> images;

  RentCarModel({
    required this.status,
    required this.carData,
    required this.images,
  });

  factory RentCarModel.fromJson(Map<String, dynamic> json) => RentCarModel(
    status: json["status"],
    carData: RentCarData.fromJson(json["car_data"]),
    images: List<String>.from(json["images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "status": status,
    "car_data": carData.toJson(),
    "images": List<dynamic>.from(images.map((x) => x)),
  };
}

class RentCarData {
  int id;
  String images;
  String name;
  String model;
  String color;
  int price;
  int productionYear;
  String carTransmission;
  String propulsionType;
  String engineType;
  String engineSize;
  String fuelTankCapacity;
  int numberForRentedTime;
  String mileage;
  String registrationPlate;
  String priceType;
  DateTime createdAt;
  DateTime updatedAt;

  RentCarData({
    required this.id,
    required this.images,
    required this.name,
    required this.model,
    required this.color,
    required this.price,
    required this.productionYear,
    required this.carTransmission,
    required this.propulsionType,
    required this.engineType,
    required this.engineSize,
    required this.fuelTankCapacity,
    required this.numberForRentedTime,
    required this.mileage,
    required this.registrationPlate,
    required this.priceType,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RentCarData.fromJson(Map<String, dynamic> json) => RentCarData(
    id: json["id"],
    images: json["Images"],
    name: json["Name"],
    model: json["Model"],
    color: json["Color"],
    price: json["Price"],
    productionYear: json["Production_Year"],
    carTransmission: json["Car_Transmission"],
    propulsionType: json["Propulsion_Type"],
    engineType: json["Engine_Type"],
    engineSize: json["Engine_Size"],
    fuelTankCapacity: json["Fuel_Tank_Capacity"],
    numberForRentedTime: json["Number_For_Rented_Time"],
    mileage: json["Mileage"],
    registrationPlate: json["registration_plate"],
    priceType: json["price_type"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Images": images,
    "Name": name,
    "Model": model,
    "Color": color,
    "Price": price,
    "Production_Year": productionYear,
    "Car_Transmission": carTransmission,
    "Propulsion_Type": propulsionType,
    "Engine_Type": engineType,
    "Engine_Size": engineSize,
    "Fuel_Tank_Capacity": fuelTankCapacity,
    "Number_For_Rented_Time": numberForRentedTime,
    "Mileage": mileage,
    "registration_plate": registrationPlate,
    "price_type": priceType,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
