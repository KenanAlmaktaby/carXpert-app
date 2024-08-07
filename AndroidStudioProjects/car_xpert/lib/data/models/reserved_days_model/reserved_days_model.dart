import 'dart:convert';

ReservedDaysModel reservedDaysModelFromJson(String str) => ReservedDaysModel.fromJson(json.decode(str));

String reservedDaysModelToJson(ReservedDaysModel data) => json.encode(data.toJson());

class ReservedDaysModel {
  List<String> reservedDates;
  CarInfo carInfo;

  ReservedDaysModel({
    required this.reservedDates,
    required this.carInfo,
  });

  factory ReservedDaysModel.fromJson(Map<String, dynamic> json) => ReservedDaysModel(
    reservedDates: List<String>.from(json["reserved_dates"].map((x) => x)),
    carInfo: CarInfo.fromJson(json["car_info"]),
  );

  Map<String, dynamic> toJson() => {
    "reserved_dates": List<dynamic>.from(reservedDates.map((x) => x)),
    "car_info": carInfo.toJson(),
  };
}

class CarInfo {
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

  CarInfo({
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

  factory CarInfo.fromJson(Map<String, dynamic> json) => CarInfo(
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
