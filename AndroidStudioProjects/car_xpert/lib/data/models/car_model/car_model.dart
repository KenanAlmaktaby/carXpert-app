import 'package:carxpert/data/models/color_model/color_model.dart';
import 'package:carxpert/data/models/general_model/general_model.dart';


class CarModel extends GeneralModel{
  String brand;
  String name;
  List<String> photos;
  String? productionYear;
  String carTransmission;
  String propulsionType;
  String engineType;
  double engineSize;
  double fuelTankCapacity;
  double fuelEfficiency ;
  int? mileage;
  List<ColorModel> colors;
  int? numberOfRentedTimes ;
  double price;


  CarModel({
    required this.brand,
    required this.name,
    required this.photos,
    required this.productionYear,
    required this.carTransmission,
    required this.propulsionType,
    required this.engineType,
    required this.engineSize,
    required this.fuelTankCapacity,
    required this.fuelEfficiency,
    this.mileage,
    required this.colors ,
    this.numberOfRentedTimes,
    required this.price
  }):super(message: '',data: []);



}